import defaultProps from 'element-plus/es/components/table/src/table/defaults'
export default {
	// 表格的id ，要唯一
	id: {
		type: String || Number,
		required: true,
	},
	//  表格的列
	columns: {
		type: Array,
		default: [],
	},
	...defaultProps,
}
