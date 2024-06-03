import { computed } from 'vue'
export function useChangeScale(hiprintTemplate) {
	const scaleValue = ref(1)
	const scaleMin = 0.5
	const scaleMax = 5
	function changeScale(big) {
		if (big) {
			scaleValue.value += 0.1
			if (scaleValue.value > scaleMax) scaleValue.value = 5
		} else {
			scaleValue.value -= 0.1
			if (scaleValue.value < scaleMin) scaleValue.value = 0.5
		}
		if (hiprintTemplate) {
			// scaleValue: 放大缩小值, false: 不保存(不传也一样), 如果传 true, 打印时也会放大
			hiprintTemplate.zoom(scaleValue.value)
		}
	}
	const scaleValueFormat = computed(() => {
		return (scaleValue.value * 100).toFixed(0) + '%'
	})
	return { scaleValueFormat, changeScale }
}
