<template>
  <div class="header-container">
    <div class="header">
      <div class="title">{{ title }}</div>
      <slot></slot>
      <div class="time">{{ time }}</div>
    </div>
  </div>
</template>

<script setup>
  import dayjs from 'dayjs'
  import { set } from 'ol/transform'
  const props = defineProps()
  const title = '上海野生动植物资源管理系统'
  const time = ref(dayjs().format('YYYY-MM-DD HH:mm:ss'))
  setInterval(() => {
    time.value = dayjs().format('YYYY-MM-DD HH:mm:ss')
  }, 1000)
</script>

<style scoped>
  .header-container {
    background: linear-gradient(180deg, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0));
  }
  .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100px;
    padding: 0 50px;
    padding-bottom: 20px;
    -webkit-backdrop-filter: blur(5px);
    backdrop-filter: blur(5px);
    background: linear-gradient(
      180deg,
      rgba(0, 229, 187, 0.4),
      rgba(0, 229, 187, 0)
    );
    color: #ffffff;
  }
  .title {
    font-size: 28px;
    font-weight: bold;
  }
  .time {
    font-size: 20px;
    /* background-color: blue; */
    width: 260px;
    text-align: right;
  }
</style>
