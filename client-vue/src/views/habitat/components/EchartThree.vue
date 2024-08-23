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
	title: { text: '乌类栖息地修复后重点保护鸟类种数' },
	tooltip: {
		trigger: 'axis',
		axisPointer: {
			// Use axis to trigger tooltip
			type: 'shadow', // 'shadow' as default; can also be 'line' or 'shadow'
		},
	},
	legend: {
		top: '30px',
		right: '0px',
	},
	grid: {
		left: '3%',
		right: '4%',
		bottom: '3%',
		containLabel: true,
	},
	xAxis: {
		type: 'value',
	},
	yAxis: {
		type: 'category',
		data: [
			'宝山陈行',
			'西沙-期',
			'嘉定浏岛',
			'闵行昊泾',
			'闵行吴淞江',
			'浦东金海',
			'松江泖港',
		],
	},
	series: [
		{
			name: '上海市重点',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [6, 10, 16, 13, 15, 16, 13],
		},
		{
			name: '国家重点',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [5, 6, 6, 1, 2, 6, 1],
		},
		{
			name: 'IUCN',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [1, 4, 2, 0, 0, 2, 2],
		},
	],
}
</script>
