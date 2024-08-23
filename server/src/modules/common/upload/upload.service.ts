import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import * as qiniu from 'qiniu';
import { v4 as uuidv4 } from 'uuid';
import { Duplex } from 'stream';
import * as Express from 'express';
import * as fs from 'fs';
@Injectable()
export class UploadService {
  private readonly mac: qiniu.auth.digest.Mac;
  private readonly config: qiniu.conf.Config;
  private readonly bucket: string;
  private readonly formUploader: qiniu.form_up.FormUploader;

  constructor(private readonly configService: ConfigService) {
    const accessKey = this.configService.get<string>('qiniu.accessKey');
    const secretKey = this.configService.get<string>('qiniu.secretKey');
    this.bucket = this.configService.get<string>('qiniu.bucket');

    this.mac = new qiniu.auth.digest.Mac(accessKey, secretKey);
    this.config = new qiniu.conf.Config();
    //@ts-ignore
    this.config.zone = qiniu.zone.Zone0;
    this.formUploader = new qiniu.form_up.FormUploader(this.config);
  }
  // @ts-ignore
  async uploadFile(file: Express.Multer.File): Promise<string> {
    console.log(file, 'file');
    const key = 'qdd/' +  uuidv4() + file.filename; // 使用随机生成的 key
    const path = file.path;
    // 解析path读取文件buffer
    const buffer = await fs.promises.readFile(path);
    console.log(buffer);
    const options = {
      scope: `${this.bucket}:${key}`,
      expires: 3600, // 上传凭证有效时间，单位秒，默认 3600 秒
      
    };
    const putPolicy = new qiniu.rs.PutPolicy(options);
    const uploadToken = putPolicy.uploadToken(this.mac);
    const readableStream = new Duplex();
    readableStream.push(buffer);
    readableStream.push(null); //关闭流
    const formUploader = this.formUploader;
    console.log('uploadToken', uploadToken, formUploader);

    return new Promise<string>((resolve, reject) => {
      formUploader.putStream(
        uploadToken,
        key,
        readableStream,
        new qiniu.form_up.PutExtra(),

        function (respErr, respBody, respInfo) {
          console.log(respBody);
          if (respErr) {
            reject(respErr);
          }
          if (respInfo.statusCode === 200) {
            resolve(`https://qiniu.linkxspace.cn/${respBody.key}`);
          } else {
            reject(respBody);
          }
        },
      );
    });
  }
}
