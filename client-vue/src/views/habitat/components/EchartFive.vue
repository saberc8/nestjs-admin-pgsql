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
	title: {
		text: '各类栖息地植被种数对比',
	},
	tooltip: {
		trigger: 'axis',
		axisPointer: {
			type: 'shadow',
		},
	},
	legend: {},
	grid: {
		left: '3%',
		right: '4%',
		bottom: '3%',
		containLabel: true,
	},
	xAxis: {
		type: 'value',
		boundaryGap: [0, 0.01],
	},
	yAxis: {
		type: 'category',
		data: [
			'嘉定泖岛',
			'闵行吴泾',
			'闵行吴泾江工',
			'浦东金海',
			'松江南港',
			'西沙一期',
			'宝山陈行',
			'青浦大莲湖',
			'闵行浦江莲类',
			'青浦朱家角',
			'嘉定彭门',
			'闵行浦江湿地',
			'青浦三沥',
			'西沙二期',
			'松江叶榭',
			'崇明新村乡',
			'奉贤庄行',
			'松江新浜',
			'东渡扬子鹤',
			'奉贤申亚',
		],
	},
	series: [
		{
			name: '修复后植被种数',
			type: 'bar',
			data: [
				300, 234, 130, 89, 87, 67, 28, 56, 43, 21, 117, 109, 79, 67, 172, 141,
				130, 60, 41, 18,
			],
		},
	],
}
</script>
