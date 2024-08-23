<template>
  <el-select
    v-model="currentValue"
    :placeholder="placeholder"
    :required="required"
    style="width: 100%"
    :clearable="true"
    @change="change"
  >
    <el-option
      v-for="item in options"
      :key="item.value"
      :label="item.label"
      :value="item.value"
    >
    </el-option>
  </el-select>
</template>

<script lang="ts" setup>
  const props = defineProps({
    value: {
      type: String,
      default: '',
    },
    placeholder: {
      type: String,
      default: '',
    },
    required: {
      type: Boolean,
      default: false,
    },
    options: {
      type: Array,
      default: () => [],
    },
  })
  const currentValue = ref(props.value)

  const emit = defineEmits(['selectChange'])

  watch(
    () => props.value,
    (val) => {
      currentValue.value = val
    },
  )

  const change = (val) => {
    emit('selectChange', val)
  }
</script>
