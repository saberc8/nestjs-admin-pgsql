<template>
	<div>
		<t-chart
			:options="options"
			style="width: 100%; height: 500px"
			@click="click"
			@dblclick="addData()"
			@mousedown="mousedown"
			@mousemove="mousemove"
			@mouseover="mouseover"
			@mouseout="mouseout"
			@globalout="globalout"
			@contextmenu="contextmenu"
			@chart="chart"
		/>
	</div>
</template>
<script setup>
import TChart from '@/components/TEchart/index.vue'
import { ref } from 'vue'
const options = ref()
const addData = () => {
	options.value.xAxis.data.push(
		'test' + Math.random().toString(36).substring(2, 8)
	)
	options.value.series[0].data.push(Math.random() * 200)
}
const click = (e) => {
	console.log('click-----', e)
}
const mousedown = (e) => {
	console.log('mousedown-----', e)
}
const mousemove = (e) => {
	console.log('mousemove-----', e)
}
const mouseover = (e) => {
	console.log('mouseover-----', e)
}
const mouseout = (e) => {
	console.log('mouseout-----', e)
}
const globalout = (e) => {
	console.log('globalout-----', e)
}
const contextmenu = (e) => {
	console.log('contextmenu-----', e)
}

const chartRef = ref(null)
const chart = (dom) => {
	chartRef.value = dom
}
let dataMap = {}

options.value = {
	title: { text: '各栖息地目标物种种群数量对比' },
	tooltip: {
		trigger: 'axis',
		axisPointer: {
			// Use axis to trigger tooltip
			type: 'shadow', // 'shadow' as default; can also be 'line' or 'shadow'
		},
	},
	xAxis: {
		type: 'category',
		data: [
			'松江新浜獐',
			'松江叶榭獐',
			'崇明明珠湖獐',
			'上实东滩扬子鳄',
			'崇明新村乡-麋鹿',
			'奉贤申亚-狗獾',
			'奉贤庄行-狗獾',
		],
		// 完整显示
		axisLabel: {
			interval: 0,
			rotate: 40,
		},
	},
	yAxis: {
		type: 'value',
	},
	legend: {
		top: '30px',
		right: '0px',
	},
	series: [
		{
			data: [20, 30, 52, 12, 4, 30, 10],
			type: 'bar',
			name: '引入种群数量',
		},
		{
			data: [8, 46, 9, 35, 6, 0, 14],
			type: 'bar',
			name: '调查种群数量',
		},
	],
}
</script>
