<template>
	<div class="container">
		<el-icon class="icon" @click="close"><CloseBold /></el-icon>
		<h1>当前栖息地：{{ habitatName }}</h1>
		<div class="content">
			<div class="left">
				<h3>数据录入</h3>
				<el-tabs
					class="tabs-left"
					v-model="activeName"
					type="card"
					@tab-click="handleClick"
				>
					<el-tab-pane
						v-for="(item, index) in indicatorsList"
						:label="item.indicatorsName"
						:name="item.indicatorsName"
					>
						<div class="indicators-form">
							<div class="attributes-form-item">
								<div class="attributes-form-item-label">时间</div>
								<el-date-picker
									v-model="formData[index].surveyTime"
									type="month"
									placeholder="选择日期"
									style="width: 100%"
									format="YYYY-MM"
									@change="changeDate($event, index)"
								></el-date-picker>
							</div>
							<div
								class="attributes-form-item"
								v-for="(attr, cIndex) in formData[index].attributes"
								:key="cIndex"
							>
								<div class="attributes-form-item-label">
									{{ attr.attributesName }}
								</div>
								<el-input
									v-model="attr.data"
									placeholder="请输入内容"
								></el-input>
							</div>
							<el-button @click="save(index)" type="primary">保存</el-button>
						</div>
					</el-tab-pane>
				</el-tabs>
			</div>

			<div class="table-right">
				<h3>数据查看</h3>
				<el-table :data="habitatTableData" :border="true" style="width: 100%">
					<el-table-column type="expand">
						<template #default="props">
							<el-card class="child-table">
								<el-table
									:data="props.row.children"
									:border="true"
									size="small"
								>
									<el-table-column
										label="基础属性"
										prop="attributes.attributesName"
									/>
									<el-table-column label="属性值" prop="data" />
								</el-table>
							</el-card>
						</template>
					</el-table-column>
					<el-table-column label="指标名称" prop="indicators.indicatorsName" />
					<el-table-column label="指标对应时间" prop="surveyTime">
						<template #default="{ row }">
							{{ dayjs(row.surveyTime).format('YYYY-MM') }}
						</template>
					</el-table-column>
					<el-table-column label="数据录入时间" prop="createTime">
						<template #default="{ row }">
							{{ dayjs(row.createTime).format('YYYY-MM-DD HH:mm:ss') }}
						</template>
					</el-table-column>
					<el-table-column label="更新时间" prop="updateTime">
						<template #default="{ row }">
							{{ dayjs(row.updateTime).format('YYYY-MM-DD HH:mm:ss') }}
						</template>
					</el-table-column>
					<el-table-column label="操作">
						<template #default="{ row }">
							<el-button type="text" size="small">编辑</el-button>
						</template>
					</el-table-column>
				</el-table>
			</div>
		</div>
	</div>
</template>
<script setup>
defineOptions({
	name: 'HabitatBindData/:id',
})

import { onActivated } from 'vue'
import {
	getHabitatDetail,
	saveSurveyData,
	getSurveyData,
} from '../../api/habitat'
import { ElMessage, ElMessageBox } from 'element-plus'
import { CloseBold } from '@element-plus/icons-vue'
import dayjs from 'dayjs'
const { proxy } = getCurrentInstance()

const route = useRoute()
const habitatName = ref('')
const habitatId = ref('')
const surveyItemsId = ref('')
const indicatorsList = ref([])
const attributesList = ref([])
const surveyData = ref([])
const formData = ref([])
const habitatTableData = ref([])
const tableData = [
	{
		date: '2016-05-03',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
	{
		date: '2016-05-02',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
	{
		date: '2016-05-04',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
	{
		date: '2016-05-01',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
	{
		date: '2016-05-08',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
	{
		date: '2016-05-06',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
	{
		date: '2016-05-07',
		name: 'A11',
		state: 'California',
		city: 'San Francisco',
		address: '3650 21st St, San Francisco',
		zip: 'CA 94114',
		family: [
			{
				name: 'Jerry',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Spike',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
			{
				name: 'Tyke',
				state: 'California',
				city: 'San Francisco',
				address: '3650 21st St, San Francisco',
				zip: 'CA 94114',
			},
		],
	},
]
habitatName.value = route.query.habitatName

const getHabitatDetailFn = async (id) => {
	const res = await getHabitatDetail(id)
	console.log(res, '---')
	habitatId.value = Number(id)
	surveyItemsId.value = res.data.surveyItemsId
	getSurveyDataFn({
		habitatId: Number(id),
		surveyItemsId: Number(res.data.surveyItemsId),
	})
	const data = res.data.surveyItems?.indicators
	if (data.length > 0) {
		activeName.value = data[0].indicatorsName
		indicatorsList.value = data.map((item) => {
			return {
				indicatorsName: item.indicatorsName,
				indicatorsId: item.indicatorsId,
			}
		})
		data.map((item) => {
			item.surveyTime = ''
			item.attributes.map((attr) => {
				attr.data = ''
			})
		})
		formData.value = data
		console.log(formData.value, 'formData.value')
	}
}

getHabitatDetailFn(route.params.id)

// 关闭tag
const close = () => {
	// proxy.$tab.closePage()
	// 弹窗确认
	ElMessageBox.confirm('确认关闭当前页签吗？', '提示', {
		confirmButtonText: '确定',
		cancelButtonText: '取消',
		type: 'warning',
	})
		.then(() => {
			// 确定
			proxy.$tab.closePage()
		})
		.catch(() => {
			// 取消
		})
}
// 监听keep-alive离开生命周期
onDeactivated(() => {
	console.log('HabitatBindData deactivated')
})
onActivated(() => {
	console.log('HabitatBindData activated')
})

const activeName = ref('')

const handleClick = (tab, event) => {
	console.log(tab, event)
}

const changeDate = async (val, index) => {
	console.log(val, index)
	// val 转成 2023-12-31T16:00:00.000Z
	const params = {
		surveyTime: new Date(val).toISOString() + '',
		habitatId: Number(habitatId.value),
		surveyItemsId: Number(surveyItemsId.value),
		indicatorsId: Number(formData.value[index].indicatorsId),
	}
	console.log(params)
	const res = await getSurveyData(params)
	console.log(res, 'getSurveyData')
	if (res.code === 200) {
		if (res.data.length > 0) {
			res.data.map((item) => {
				formData.value[index].attributes.map((attr) => {
					if (item.attributesId === attr.attributesId) {
						attr.data = item.data
					}
				})
			})
		} else {
			formData.value[index].attributes.map((attr) => {
				attr.data = ''
			})
		}
	} else {
		ElMessage.error('获取数据失败')
	}
}

const save = async (index) => {
	console.log(formData.value, 'formData')
	const currentData = formData.value[index]
	console.log(currentData, 'formData[index]')
	if (currentData.surveyTime === '') {
		ElMessage.error('时间不能为空')
		return
	}
	const params = {
		habitatId: habitatId.value,
		surveyItemsId: surveyItemsId.value,
		indicatorsId: currentData.indicatorsId,
		surveyTime: currentData.surveyTime,
		data: currentData.attributes.map((item) => {
			return {
				attributesId: item.attributesId,
				data: item.data,
			}
		}),
	}
	console.log(params)
	const res = await saveSurveyData(params)
	console.log(res)
	if (res.code === 200) {
		ElMessage.success('保存成功')
		getSurveyDataFn({
			habitatId: habitatId.value,
			surveyItemsId: surveyItemsId.value,
		})
	} else {
		ElMessage.error('保存失败')
	}
}

const getSurveyDataFn = async (params) => {
	const res = await getSurveyData(params)
	console.log(res)
	if (res.code === 200) {
		console.log(res.data, 'res.data')
		const data = res.data
		if (data.length > 0) {
			// 合并数据 indicatorsId 和 surveyTime 相同的数据
			const newData = []
			data.map((item) => {
				const index = newData.findIndex(
					(nItem) =>
						nItem.indicators.indicatorsId === item.indicatorsId &&
						nItem.surveyTime === item.surveyTime
				)
				if (index === -1) {
					newData.push({
						indicators: item.indicators,
						surveyTime: item.surveyTime,
						createTime: item.createTime,
						updateTime: item.updateTime,
						children: [item],
					})
				} else {
					newData[index].children.push(item)
				}
			})
			console.log(newData, 'newData')
			habitatTableData.value = newData
		} else {
			ElMessage.warning('暂无栖息地数据')
		}
	} else {
		ElMessage.warning('暂无栖息地数据')
	}
}

const renderTable = () => {
	console.log('renderTable')
}
</script>

<style lang="scss" scoped>
.container {
	display: flex;
	padding: 0 20px;
	flex-direction: column;
	position: relative;
	.icon {
		position: fixed;
		right: 20px;
		top: 100px;
		cursor: pointer;
	}
	.content {
		display: flex;
		width: 100%;
		.left {
			display: flex;
			flex-direction: column;
			width: 45%;
			margin-right: 40px;
			padding-right: 40px;
			height: auto;
			border-right: 1px solid #ebeef5;
			.tabs-left {
				width: 100%;
			}
		}

		.table-right {
			flex: 1;
			overflow-y: scroll;
		}
	}
}
.indicators-form {
	min-height: 300px;
	display: flex;
	flex-direction: column;
	.attributes-form-item {
		display: flex;
		margin-bottom: 10px;
		.attributes-form-item-label {
			min-width: 100px;
		}
	}
}
.child-table {
	margin: 5px 20px;
}
</style>
