<template>
  <el-upload
    class="avatar-uploader"
    :action="action"
    :show-file-list="false"
    :on-success="handleSuccess"
    :before-upload="beforeUpload"
  >
    <img v-if="currentValue" :src="currentValue" class="avatar" />
    <el-icon v-else class="avatar-uploader-icon"><Plus /></el-icon>
  </el-upload>
</template>

<script lang="ts" setup>
  import { ref } from 'vue'
  import { ElMessage } from 'element-plus'
  import { Plus } from '@element-plus/icons-vue'
  import type { UploadProps } from 'element-plus'
  const props = defineProps<{
    value: string
    placeholder: string
    required: boolean
  }>()

  const action = import.meta.env.VITE_UPLOAD
  const currentValue = ref(props.value)

  const emit = defineEmits(['imgChange'])

  watch(
    () => props.value,
    (val) => {
      currentValue.value = val
    },
  )

  const handleSuccess: UploadProps['onSuccess'] = (response, uploadFile) => {
    console.log(response)
    currentValue.value = response.result.data
    emit('imgChange', currentValue.value)
  }

  const beforeUpload: UploadProps['beforeUpload'] = (rawFile) => {
    console.log(rawFile.type)
    if (rawFile.type !== 'image/jpeg' && rawFile.type !== 'image/png') {
      ElMessage.error('Avatar picture must be JPG format!')
      return false
    } else if (rawFile.size / 1024 / 1024 > 2) {
      ElMessage.error('Avatar picture size can not exceed 2MB!')
      return false
    }
    return true
  }
</script>

<style scoped lang="scss">
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
  .el-upload {
    border: 1px dashed var(--el-border-color);
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    transition: var(--el-transition-duration-fast);
  }
  .el-upload:hover {
    border-color: var(--el-color-primary);
  }
  .el-icon.avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    text-align: center;
  }
</style>
