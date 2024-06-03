<template>
	<div class="app-container app-js df fdc">
		<div>
			<el-button>制作</el-button>
			<el-button @click="validate">校验</el-button>
		</div>
		<div class="f1">
			<deliveryForm ref="delivery"></deliveryForm>
		</div>
	</div>
</template>

<script setup>
import deliveryForm from '../components/deliveryForm/index'
const delivery = ref(null)

function validate(params) {
	const hotInstance = delivery.value.getHotInstance()
	//先取消所有列的过滤
	let filters = hotInstance.getPlugin('filters')
	filters.clearConditions()
	filters.filter()
	console.log(hotInstance)
	// hotInstance.setCellMeta(0, 0, 'valid', false)
	// hotInstance.render()
	hotInstance.validateCells((a) => {
		console.log(a)
	})
}
</script>

<style lang="scss" scoped></style>
