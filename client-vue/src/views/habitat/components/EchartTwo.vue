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
	title: { text: '蛙类栖息地修复前后蛙类物种组成' },
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
		data: ['2023年', '2022年', '2021年', '2020年'],
	},
	series: [
		{
			name: '中华大蟾蜍',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [21, 22, 0, 0],
		},
		{
			name: '饰纹姬蛙',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [9, 9, 0, 0],
		},
		{
			name: '泽陆蛙',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [60, 68, 0, 0],
		},
		{
			name: '金线侧褶蛙',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [1, 12, 264, 39],
		},
		{
			name: '黑斑侧褶蛙',
			type: 'bar',
			stack: 'total',
			label: {
				show: true,
			},
			emphasis: {
				focus: 'series',
			},
			data: [3, 9, 0, 0],
		},
	],
}
</script>
