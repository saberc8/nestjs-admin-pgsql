// 文件上传
// @Post('upload')
// @UseInterceptors(FileInterceptor('file'))
// async uploadFile(
//   @UploadedFile() file: Express.Multer.File,
//   @Query('fileName') fileName,
// ) {
//   return {
//     fileName,
//     originalname: file.originalname,
//     mimetype: file.mimetype,
//   };
// }
export function uploadFile(data) {
  return request({
    url: '/common/upload',
    method: 'post',
    data: data,
  })
}
