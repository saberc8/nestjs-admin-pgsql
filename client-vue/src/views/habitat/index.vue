<template>
	<ProTable
		ref="proTable"
		:dataSource="dataSource"
		:columns="columns"
		:params="params"
		:searchForm="searchForm"
		:showForm="showForm"
		:getListFunc="getListFunc"
	>
		<template #toolbar_title>
			<span style="font-weight: bold; font-size: 20px; color: #000"
				>栖息地列表</span
			>
		</template>
		<template #toolbar_buttons>
			<el-button type="primary" @click="add"> 新增 </el-button>
		</template>
	</ProTable>
	<DialogForm
		v-if="visible"
		:title="title"
		:visible="visible"
		:formData="formData"
		:renderForm="renderForm"
		:formFunc="formFunc"
		@close="close"
	></DialogForm>
</template>

<script setup>
defineOptions({
	name: 'HabitatList',
})
import { getToken } from '@/utils/auth'
import { createButton, createSpaceGroup } from '@/utils/createElement'
import {
	getHabitatList,
	addHabitat,
	updateHabitat,
	deleteHabitat,
} from '@/api/habitat'
import { getSurveyItemsList } from '@/api/surveyItems'
import dayjs from 'dayjs'
import { ElButton, ElMessage, ElSpace, ElMessageBox } from 'element-plus'
import DialogForm from '@/components/DialogForm/index.vue'
import ProTable from '@/components/ProTable/index.vue'
import router from '../../router'
const dataSource = ref([])
const proTable = ref()
const visible = ref(false)
const title = ref('新增')
const getListFunc = getHabitatList
const formFunc = ref()
const formData = ref({
	habitatName: '',
	habitatType: '',
	address: '',
	longitude: null,
	latitude: null,
	buildTime: '',
	checkTime: '',
})
const renderForm = [
	{
		field: 'habitatName',
		label: '名称',
		type: 'input',
		placeholder: '请输入名称',
		required: true,
	},
	{
		field: 'surveyItemsId',
		label: '类型',
		type: 'select-dynamic',
		placeholder: '请选择类型',
		required: false,
		componentProps: {
			renderFunc: getSurveyItemsList,
			renderParams: {},
			options: [],
			formatData: {
				value: 'surveyItemsId',
				label: 'surveyItemsName',
			},
		},
	},
	{
		field: 'address',
		label: '地址',
		type: 'input',
		placeholder: '请输入地址',
		required: false,
	},
	{
		field: 'longitude',
		label: '经度',
		type: 'input',
		placeholder: '请输入经度',
		required: false,
	},
	{
		field: 'latitude',
		label: '纬度',
		type: 'input',
		placeholder: '请输入纬度',
		required: false,
	},
	{
		field: 'buildTime',
		label: '建设时间',
		type: 'date',
		placeholder: '请选择建设时间',
		required: false,
	},
	{
		field: 'checkTime',
		label: '检查时间',
		type: 'date',
		placeholder: '请选择检查时间',
		required: false,
	},
]
const columns = [
	{
		type: 'seq',
		width: 60,
		treeNode: false, // 开启树图表
	},
	{ field: 'habitatId', title: 'ID', width: 80 },
	{ field: 'habitatName', title: '栖息地名称', width: 300 },
	{
		field: 'surveyItemsId',
		title: '栖息地类型',
		width: 150,
		formatter: (row) => {
			return row.row.surveyItems ? row.row.surveyItems.surveyItemsName : ''
		},
	},
	{ field: 'address', title: '地址', width: 300 },
	{ field: 'longitude', title: '经度', width: 150 },
	{ field: 'latitude', title: '纬度', width: 150 },
	{ field: 'buildTime', title: '建设时间', width: 180 },
	{ field: 'checkTime', title: '检查时间', width: 180 },
	{
		field: 'createTime',
		title: '创建时间',
		width: 180,
		formatter: (row) => {
			return dayjs(row.row.createTime).format('YYYY-MM-DD HH:mm:ss')
		},
	},
	{
		field: 'updateTime',
		title: '更新时间',
		width: 180,
		formatter: (row) => {
			return row.row.updateTime
				? dayjs(row.row.updateTime).format('YYYY-MM-DD HH:mm:ss')
				: dayjs(row.row.createTime).format('YYYY-MM-DD HH:mm:ss')
		},
	},
	{
		title: '操作',
		width: 290,
		align: 'center',
		fixed: 'right',
		slots: {
			default: ({ row }) => {
				return createSpaceGroup([
					createButton('primary', 'small', '编辑', () => updateColumnData(row)),
					createButton('success', 'small', '查看', () => detailData(row)),
					createButton('danger', 'small', '删除', () =>
						deleteFunc(row.habitatId)
					),
					createButton('warning', 'small', '数据绑定', () => bindData(row)),
				])
			},
		},
	},
]
const showForm = true
// 搜索区域
const searchForm = [
	{
		label: '名称',
		field: 'habitatName',
		type: 'input',
		componentProps: {
			placeholder: '请输入名称',
		},
	},
]
const params = ref({
	pageNum: 1,
	pageSize: 10,
})
const add = async () => {
	title.value = '新增'
	visible.value = true
	formData.value = renderForm.reduce((acc, cur) => {
		acc[cur.field] = ''
		return acc
	}, {})
	formFunc.value = addHabitat
}

const close = (e) => {
	visible.value = false
	if (e) {
		refreshTable()
	}
}

const refreshTable = () => {
	setTimeout(() => {
		proTable.value.reloadData()
	}, 500)
}

const updateColumnData = (row) => {
	const rowBak = JSON.parse(JSON.stringify(row))
	// console.log(rowBak)
	delete rowBak._X_ROW_KEY
	title.value = '编辑'
	formData.value = rowBak
	formFunc.value = updateHabitat
	visible.value = true
}

const deleteFunc = async (id) => {
	ElMessageBox.confirm('确认删除吗？', '提示', {
		confirmButtonText: '确定',
		cancelButtonText: '取消',
		type: 'warning',
	}).then(async () => {
		const res = await deleteHabitat(id)
		ElMessage.success('删除成功')
		refreshTable()
	})
}

const bindData = (row) => {
	router.push({
		path: `/habitat/habitatBindData/${row.habitatId}`,
		query: {
			habitatName: row.habitatName,
		},
	})
}

const detailData = (row) => {
	router.push({
		path: `/habitat/habitatDetailData/${row.habitatId}`,
		query: {
			habitatName: row.habitatName,
		},
	})
}
</script>
