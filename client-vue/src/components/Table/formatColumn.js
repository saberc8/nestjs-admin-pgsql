import { nextTick, toValue } from 'vue'
import { getTableConfig } from '@/api/system/user.js'
export function formatColumn(tableId, columns, TableRef) {
	const mergeColumn = ref([])
	function getData() {
		getTableConfig({ tableId: toValue(tableId) })
			.then(({ data }) => {
				let columnArr = []
				if (data) {
					columnArr = JSON.parse(data)
				}
				// 遍历前端本地代码的列表
				const list = toValue(columns).map((item) => {
					const obj = {
						minWidth: 80,
						showOverflowTooltip: true,
						align: 'left',
						fixed: undefined,
						hide: false,
						noExport: false,
						sort: 999,
					}
					// 将服务器上的 替换本地的 然后 替换默认的
					const oldRow = columnArr.find((item2) => item2.prop === item.prop)
					Object.assign(obj, item, oldRow)
					return obj
				})
				list.sort((pre, next) => {
					return pre.sort - next.sort
				})
				mergeColumn.value = list
				return nextTick()
			})
			.then(() => {
				toValue(TableRef) && toValue(TableRef).doLayout()
			})
	}
	return {
		mergeColumn,
		getData,
	}
}
