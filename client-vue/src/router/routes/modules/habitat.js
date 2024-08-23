import { LAYOUT } from '@/router/constant'

const habitat = {
  path: '/habitat',
  name: 'habitat',
  component: LAYOUT,
  redirect: '/habitat/list',
  meta: {
    orderNo: 10,
    icon: 'ant-design:cluster-outlined',
    title: '微信群管理',
  },
  children: [
    {
      path: 'habitatlist',
      name: 'habitatList',
      component: () => import('@/views/habitat/habitat/index.vue'),
      meta: {
        title: '群管理',
      },
    },
    {
      path: 'bannerlist',
      name: 'BannerList',
      component: () => import('@/views/habitat/banner/index.vue'),
      meta: {
        title: 'banner管理',
      },
    },
  ],
}

export default habitat
