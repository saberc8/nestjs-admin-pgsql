<template>
  <div class="card-body">
    <div class="card-title">
      <div class="top-border"></div>
      <div class="right-border"></div>
      <div class="title">
        {{ title }}
      </div>
      <Icon
        v-if="!show"
        icon="iconamoon:arrow-down-2-duotone"
        color="#1677ff"
        class="icon-down"
        @click="show = !show"
      />
      <Icon
        v-else
        icon="iconamoon:arrow-up-2-duotone"
        color="#1677ff"
        class="icon-down"
        @click="show = !show"
      />
    </div>
    <div class="card-content" v-if="show">
      <slot></slot>
    </div>
  </div>
</template>

<script setup>
  import { Icon } from '@iconify/vue'
  import { ref } from 'vue'
  defineProps({
    title: String,
  })
  // #1677ff
  const count = ref(0)
  const show = ref(false)
</script>

<style scoped>
  .card-body {
    position: relative;
    display: flex;
    flex-direction: column;
    font-size: 20px;
    overflow: hidden;
  }
  .card-title {
    padding:4px 0 4px 0px;
    display: flex;
    align-items: center;
    /* background-color: blue; */
    background: linear-gradient(180deg, rgba(0, 229, 187, 0) 0%, rgba(0, 86, 207, 0.2) 100%);
  }
  .title {
    border-left: 4px solid #1677ff;
    padding-left: 10px;
    font-size: 20px;
  }
  .icon-down {
    margin-left: auto;
    font-size: 26px;
    cursor: pointer;
  }
  .card-content {
    background: linear-gradient(180deg, rgba(0, 229, 187, 0) 0%, rgba(0, 86, 207, 0.2) 100%);
    padding: 10px;
    display: flex;
    flex-direction: column;
  }
  .top-border {
    display: flex;
    position: absolute;
    top: 0;
    right: 0;
    height: 2px;
    width: 100px;
    background: radial-gradient(100.24% 50% at 100.24% 50%, #1677ff 0%, rgba(0, 229, 187, 0) 100%);
  }
  .right-border {
    display: flex;
    position: absolute;
    top: 0;
    right: 0;
    height: 100px;
    width: 2px;
    background: radial-gradient(100.24% 50% at 100.24% 50%, #1677ff 0%, rgba(0, 229, 187, 0) 100%);
  }
</style>
