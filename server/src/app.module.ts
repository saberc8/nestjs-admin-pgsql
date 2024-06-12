import { Module } from '@nestjs/common';
import { SharedModule } from './shared/shared.module';
import { AppController } from './app.controller';
import { SysModule } from './modules/sys/sys.module';
import { LoginModule } from './modules/login/login.module';
import { MonitorModule } from './modules/monitor/monitor.module';
import { CommonModule } from './modules/common/common.module';
import { HabitatModule } from './modules/habitat/habitat.module';
import { SurveyItemsModule } from './modules/survey-base-data/surveyItems/surveyItems.module';
import { IndicatorsModule } from './modules/survey-base-data/indicators/indicators.module';
import { AttributesModule } from './modules/survey-base-data/attributes/attributes.module';

@Module({
  imports: [
    SharedModule,
    CommonModule,
    SysModule,
    LoginModule,
    MonitorModule,
    HabitatModule,
    SurveyItemsModule,
    IndicatorsModule,
    AttributesModule,
  ],
  controllers: [AppController],
})
export class AppModule {}
