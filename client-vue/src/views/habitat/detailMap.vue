<template>
  <div class="container">
    <div class="content">
      <div
        class="left-contorl"
        :style="{ left: leftStatus ? leftWidth + 'px' : '0' }"
        @click="handleLeftStatus"
      >
        <IconifyIcon
          icon="material-symbols:keyboard-double-arrow-right-rounded"
          color="#1677ff"
          class="icon-right"
          v-show="leftStatus"
        />
        <IconifyIcon
          icon="material-symbols:keyboard-double-arrow-left-rounded"
          color="#1677ff"
          class="icon-right"
          v-show="!leftStatus"
        />
      </div>
      <div class="left-container" v-show="leftStatus">
        <div
          class="chart-card"
          v-for="(item, index) in statisticChartData[0].children"
        >
          <CardStyleOne :title="item.name">
            <template #default>
              <div class="card-container" v-if="index === 0">
                <div>
                  <el-table :data="tableData1" :span-method="mergeRows">
                    <el-table-column
                      prop="location"
                      label="地点"
                    ></el-table-column>
                    <el-table-column prop="type" label=""></el-table-column>
                    <el-table-column
                      v-for="column in columns"
                      :key="column"
                      :prop="column"
                      :label="column"
                    ></el-table-column>
                  </el-table>
                  <EchartThree class="echarts-one" />
                </div>
              </div>
							<div class="card-container" v-if="index === 1">
                <div>
                  <EchartFour class="echarts-one" />
                </div>
              </div>
							<div class="card-container" v-if="index === 2">
                <div>
                  <EchartFive class="echarts-one" />
                </div>
              </div>
            </template>
          </CardStyleOne>
        </div>
      </div>
    </div>
    <div id="map" class="map-container"></div>
  </div>
</template>

<script setup>
  import { ref, onMounted } from 'vue'
  import 'ol/ol.css'
  import * as ol from 'ol'
  import Map from 'ol/Map'
  import View from 'ol/View'
  import TileLayer from 'ol/layer/Tile'
  import OSM from 'ol/source/OSM'
  import XYZ from 'ol/source/XYZ'
  import VectorLayer from 'ol/layer/Vector'
  import { fromLonLat } from 'ol/proj'
  import VectorSource from 'ol/source/Vector'
  import GeoJSON from 'ol/format/GeoJSON'
  import KML from 'ol/format/KML'
  import Style from 'ol/style/Style'
  import Stroke from 'ol/style/Stroke'
  import Fill from 'ol/style/Fill'
  import Circle from 'ol/style/Circle'
  import Text from 'ol/style/Text'
  import Icon from 'ol/style/Icon'

  import { ElTable, ElTableColumn } from 'element-plus'

  import EchartThree from './components/EchartThree.vue'
	import EchartFour from './components/EchartFour.vue'
	import EchartFive from './components/EchartFive.vue'

  import { Icon as IconifyIcon } from '@iconify/vue'

  import Header from './components/Header.vue'
  import CardStyleOne from './components/CardStyleOne.vue'

  import { MapKey } from '@/common/constants'
  import { statisticChartData } from '@/api/mockData'
  const tableRowClassName = ({ row, rowIndex }) => {
    if (rowIndex === 1) {
      return 'warning-row'
    } else if (rowIndex === 3) {
      return 'success-row'
    }
    return ''
  }
  const leftWidth = 728
  let colors = ['orange', 'red', 'blue', 'yellow']
  let color = colors[Math.floor(Math.random() * colors.length)]
  const map = ref(null)
  // _w表示球面墨卡托投影，_c表示经纬度投影
  // 如img_w：影像底图球面墨卡托投影，img_c：影像底图经纬度投影
  const img_w = new TileLayer({
    title: '影像图',
    source: new XYZ({
      url:
        'http://t{0-7}.tianditu.gov.cn/DataServer?T=img_w&x={x}&y={y}&l={z}&tk=' +
        MapKey +
        '',
    }),
  })
  const cia_w = new TileLayer({
    title: '影像图文字标注',
    source: new XYZ({
      url:
        'http://t{0-7}.tianditu.gov.cn/DataServer?T=cia_w&x={x}&y={y}&l={z}&tk=' +
        MapKey +
        '',
    }),
  })
  const kmlVector = new VectorLayer({
    source: new VectorSource({
      url: '/public/files/江苏沿海考察.kml',
      format: new KML({
        extractStyles: false,
      }),
    }),
    // 只显示边界线
    style: function (feature) {
      console.log(feature, '---styles---')
      // 红色边界
      return new Style({
        stroke: new Stroke({
          color: 'red',
          width: 4,
        }),
        fill: new Fill({
          color: 'rgba(255, 255, 255, 0.6)',
        }),
        // 标记点
        image: new Circle({
          radius: 7,
          fill: new Fill({
            color: 'orange',
          }),
        }),
      })
    },
  })
  const shanghaiGeoJson = new VectorLayer({
    source: new VectorSource({
      url: '/public/files/habitat.geojson',
      format: new GeoJSON({
        extractStyles: false,
      }),
    }),
    // 只显示边界线
    style: function (feature) {
      console.log(feature, '---styles---')
      // 红色边界
      return new Style({
        stroke: new Stroke({
          color: 'red',
          width: 4,
        }),
        fill: new Fill({
          color: 'rgba(255, 255, 255, 0.6)',
        }),
        text: new Text({
          // 位置
          textAlign: 'center',
          // 基准线
          textBaseline: 'middle',
          // 文字样式
          font: 'bold 18px 微软雅黑',
          // 文本内容
          text: `${feature.get('name')}`,
          // 文字颜色
          fill: new Fill({
            color: 'black',
          }),
          // 文字背景
          stroke: new Stroke({ color: 'yellow', width: 10 }),
        }),
        image: new Icon({
          anchor: [0.5, -0.3],
          src: 'https://openlayers.org/en/v4.6.5/examples/data/icon.png',
          scale: 1, //设置大小
        }),
      })
    },
  })

  const leftStatus = ref(true)
  const handleLeftStatus = () => {
    leftStatus.value = !leftStatus.value
  }
  const centerLonLat = [121, 31]
  const centerWebMercator = fromLonLat(centerLonLat)
  console.log(centerWebMercator)
  const initMap = () => {
    map.value = new Map({
      target: 'map',
      view: new View({
        center: centerLonLat,
        zoom: 10,
        // 最大缩放级别
        maxZoom: 18,
        // // 最小缩放级别
        minZoom: 6,
        projection: 'EPSG:4326',
      }),
      // 隐藏掉ol默认的控件
      controls: [],
    })
    // click事件
    map.value.on('click', function (evt) {
      console.log(evt)
      var coordinate = evt.coordinate
      console.log(coordinate)
      console.log(map.value.getView().getZoom())
      console.log(map.value.getView().getCenter())
      // 判断点击到 shanghaiGeoJson 图层
      map.value.forEachFeatureAtPixel(evt.pixel, function (feature) {
        console.log(feature, '---shanghaiGeoJson feature---')
        // 点击的区域变蓝色
        feature.setStyle(
          new Style({
            stroke: new Stroke({
              color: 'blue',
              width: 4,
            }),
            fill: new Fill({
              color: 'rgba(255, 255, 255, 0.6)',
            }),
            text: new Text({
              // 位置
              textAlign: 'center',
              // 基准线
              textBaseline: 'middle',
              // 文字样式
              font: 'bold 18px 微软雅黑',
              // 文本内容
              text: `${feature.get('habitatName')}`,
              // 文字颜色
              fill: new Fill({
                color: 'black',
              }),
              // 文字背景
              stroke: new Stroke({ color: 'yellow', width: 10 }),
            }),
          }),
        )
      })
    })
    map.value.addLayer(img_w)
    map.value.addLayer(cia_w)
    // map.value.addLayer(kmlVector)
    // map.value.addLayer(shanghaiGeoJson)
  }
  onMounted(() => {
    initMap()
    // fetch('http://127.0.0.1:3000/channels/data/polyline_ban.geojson', {
    //   method: 'GET',
    //   headers: {
    //     'Content-Type': 'application/json',
    //   },
    // })
    //   .then((response) => response.json())
    //   .then((data) => {
    //     setTimeout(() => {
    //       map.value.addLayer(
    //         new VectorLayer({
    //           source: new VectorSource({
    //             features: new GeoJSON().readFeatures(data, {
    //               featureProjection: 'EPSG:4326',
    //             }),
    //           }),
    //         }),
    //       )
    //     }, 1000)
    //   })
  })
  const tabMenu = ref([
    {
      name: '鸟类',
      status: true,
      idx: 0,
    },
    {
      name: '兽类',
      status: false,
      idx: 1,
    },
    {
      name: '两爬类',
      status: false,
      idx: 2,
    },
    {
      name: '植物类',
      status: false,
      idx: 3,
    },
  ])
  const changeTab = (item) => {
    tabMenu.value.forEach((tab) => {
      tab.status = false
    })
    item.status = true
  }

  const tableData = [
    {
      date: '2016-05-03',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
    {
      date: '2016-05-02',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
    {
      date: '2016-05-04',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
    {
      date: '2016-05-01',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
    {
      date: '2016-05-08',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
    {
      date: '2016-05-06',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
    {
      date: '2016-05-07',
      name: 'Tom',
      address: 'No. 189, Grove St, Los Angeles',
    },
  ]

  const columns = ['1月', '2月', '3月']

  const tableData1 = [
    {
      location: '东滩',
      type: '数量',
      '1月': 12345,
      '2月': 12345,
      '3月': 12345,
    },
    {
      location: '东滩',
      type: '种类',
      '1月': 50,
      '2月': 50,
      '3月': 50,
    },
    {
      location: '西滩',
      type: '数量',
      '1月': 12345,
      '2月': 12345,
      '3月': 12345,
    },
    {
      location: '西滩',
      type: '种类',
      '1月': 10,
      '2月': 20,
      '3月': 15,
    },
  ]
  let spanArr = []

  const getSpanArr = (data) => {
    let pos = 0
    spanArr = [] // tip: 后台获取完成数据后，一定要重置spanArr=[],避免出现合并混乱！！！！！
    for (let i = 0; i < data.length; i++) {
      // 当为第一行时
      if (i === 0) {
        spanArr.push(1)
        pos = 0
      } else {
        // 判断当前值是否与上一行的【名称】相等，相等则进行合并
        if (data[i].location === data[i - 1].location) {
          spanArr[pos] += 1 // 合并单元格：合并的行数 +1
          spanArr.push(0) // 0代表单元格是不需要显示, 已经被合并的单元格
        } else {
          spanArr.push(1) // 1代表当前这行的数据需要被显示
          pos = i
        }
      }
    }
    console.log(spanArr)
  }
  getSpanArr(tableData1)

  const mergeRows = ({ row, column, rowIndex, columnIndex }) => {
    // 用于设置要合并的列(这里是指第一列合并)
    if (columnIndex === 0) {
      const _row = spanArr[rowIndex] // 合并行数
      const _col = spanArr[rowIndex] > 0 ? 1 : 0 // 合并的列数
      console.log(_row, _col)
      return {
        rowspan: _row,
        colspan: _col,
      }
    }
  }
</script>

<style scoped>
  .el-table .warning-row {
    --el-table-tr-bg-color: var(--el-color-warning-light-9);
  }
  .el-table .success-row {
    --el-table-tr-bg-color: var(--el-color-success-light-9);
  }
  .container {
    position: relative;
    width: 100vw;
    height: calc(100vh - 80px);
    /* background-color: #f0f2f5; */
  }
  .content {
    position: relative;
    z-index: 999;
  }
  .map-container {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    height: 100%;
    z-index: 0;
  }
  .tab-menu {
    display: flex;
    align-items: center;
    font-size: 24px;
    color: rgba(225, 225, 225, 0.85);
    font-weight: 700;
  }
  .tab-menu-item {
    display: flex;
    margin: 0 50px;
    flex-direction: column;
    cursor: pointer;
    align-items: center;
    min-width: 76px;
  }
  .tab-menu-item .active {
    color: rgba(0, 229, 187, 1);
  }
  .icon-active {
    width: 76px;
    height: 6px;
  }
  .left-container {
    position: absolute;
    left: 0;
    top: 20px;
    padding: 20px 20px 20px 20px;
    display: flex;
    flex-direction: column;
    width: 728px;
    height: calc(100vh - 180px);
    border-radius: 0px 12px 12px 0px;
    background: linear-gradient(0deg, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
      linear-gradient(
        90deg,
        rgba(0, 229, 187, 0) 0%,
        rgba(0, 229, 187, 0.15) 100%
      );
    box-shadow: 0px 4px 80px 0px rgba(0, 0, 0, 0.4);
    color: #ffffff;
    z-index: 999;
    overflow: auto;
  }
  .left-contorl {
    width: 24px;
    height: 48px;
    border-radius: 0px 12px 12px 0px;
    background: linear-gradient(0deg, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
      linear-gradient(
        90deg,
        rgba(0, 229, 187, 0) 0%,
        rgba(0, 229, 187, 0.15) 100%
      );
    box-shadow: 0px 4px 80px 0px rgba(0, 0, 0, 0.4);
    position: absolute;
    top: 140px;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
  }
  .chart-card {
    margin-top: 10px;
  }
  .card-container {
    /* background-color: #ffffff; */
    color: black;
  }
  .echarts-one {
    margin-top: 20px;
    background-color: #ffffff;
    overflow: hidden;
    border-radius: 10px;
  }
</style>
