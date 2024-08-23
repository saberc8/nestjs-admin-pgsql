// 栖息地列表
export const habitatList = [
  {
    id: 1,
    habitatName: '栖息地名称1',
    centerLongitude: 120.123456,
    centerLatitude: 30.123456,
    areaGeoJson: '/public/files/area1.geojson',
  },
  {
    id: 2,
    habitatName: '栖息地名称2',
    centerLongitude: 120.123456,
    centerLatitude: 30.123456,
    areaGeoJson: '/public/files/area1.geojson',
  },
  {
    id: 2,
    habitatName: '栖息地名称3',
    centerLongitude: 120.123456,
    centerLatitude: 30.123456,
    areaGeoJson: '/public/files/area1.geojson',
  },
]

// 每个类别对应的统计数据
export const statisticChartData = [
  {
    name: '鸟类',
    id: 1,
    children: [
      {
        name: '乌类栖息地修复后重点保护鸟类种数',
        id: 11,
        children: [
          {
            name: '各监测区水鸟种类和数量',
            id: 111,
          },
        ],
      },
      { name: '各栖息地目标物种种群数量对比', id: 12 },
      { name: '各类栖息地植被种数对比', id: 13 },
    ],
  },
  {
    name: '兽类',
    id: 2,
    children: [
      { name: '各监测区域内水鸟种类和数量汇总表', id: 11 },
      { name: '群落情况', id: 12 },
      { name: '水鸟群落动态', id: 13 },
      // 各监测内水鸟群落空间分布
      { name: '各监测内水鸟群落空间分布', id: 14 },
      { name: '各类群水鸟群落概况', id: 15 },
      { name: '各监测区域水鸟群落组成', id: 16 },
      { name: '三年内水鸟情况', id: 17 },
      { name: '近三年内水鸟群落总体动态', id: 18 },
      { name: '各类群水鸟种群动态', id: 19 },
    ],
  },
]
