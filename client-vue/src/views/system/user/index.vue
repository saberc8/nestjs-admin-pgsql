<template>
	<div class="app-container app-js">
		<splitpane :splitSet="settingLR">
			<template #paneL>
				<!-- 自定义左侧面板的内容 -->
				<div class="df fdc h-100">
					<el-input
						v-model="deptName"
						placeholder="请输入部门名称"
						clearable
						prefix-icon="Search"
						@input="onQueryChanged"
					/>
					<div class="f1 mt-10">
						<el-auto-resizer>
							<template #default="{ height }">
								<el-tree-v2
									ref="deptTreeRef"
									:data="deptOptions"
									:props="{ label: 'label', children: 'children' }"
									highlight-current
									:height="height"
									:filter-method="filterMethod1"
									@node-click="handleNodeClick"
									:expand-on-click-node="false"
								/>
							</template>
						</el-auto-resizer>
					</div>
				</div>
			</template>
			<template #paneR>
				<!-- 再次将右侧面板进行拆分 -->
				<div class="h-100 df fdc">
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
								>列表</span
							>
						</template>
						<template #toolbar_buttons>
							<el-button type="primary" @click="add"> 新增 </el-button>
						</template>
					</ProTable>
				</div>
			</template>
		</splitpane>
		<!-- 添加或修改用户配置对话框 -->
		<el-dialog
			:title="title"
			v-model="open"
			draggable
			:close-on-click-modal="false"
			width="600px"
			append-to-body
		>
			<el-form :model="form" :rules="rules" ref="userRef" label-width="80px">
				<el-row>
					<el-col :span="12">
						<el-form-item label="用户昵称" prop="nickName">
							<el-input
								v-model="form.nickName"
								placeholder="请输入用户昵称"
								maxlength="30"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="归属部门" prop="deptId">
							<el-tree-select
								v-model="form.deptId"
								:data="deptOptions"
								:props="{ value: 'id', label: 'label', children: 'children' }"
								value-key="id"
								placeholder="请选择归属部门"
								check-strictly
							/>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="手机号码" prop="phonenumber">
							<el-input
								v-model="form.phonenumber"
								placeholder="请输入手机号码"
								maxlength="11"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="邮箱" prop="email">
							<el-input
								v-model="form.email"
								placeholder="请输入邮箱"
								maxlength="50"
							/>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item
							v-if="form.userId == undefined"
							label="用户名称"
							prop="userName"
						>
							<el-input
								v-model="form.userName"
								placeholder="请输入用户名称"
								maxlength="30"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item
							v-if="form.userId == undefined"
							label="用户密码"
							prop="password"
						>
							<el-input
								v-model="form.password"
								placeholder="请输入用户密码"
								type="password"
								maxlength="20"
								show-password
							/>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="用户性别">
							<el-select v-model="form.sex" placeholder="请选择">
								<el-option
									v-for="dict in sys_user_sex"
									:key="dict.value"
									:label="dict.label"
									:value="dict.value"
								></el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="状态">
							<el-radio-group v-model="form.status">
								<el-radio
									v-for="dict in sys_normal_disable"
									:key="dict.value"
									:label="dict.label"
									:value="dict.value"
								></el-radio>
							</el-radio-group>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="12">
						<el-form-item label="岗位">
							<el-select v-model="form.postIds" multiple placeholder="请选择">
								<el-option
									v-for="item in postOptions"
									:key="item.postId"
									:label="item.postName"
									:value="item.postId"
									:disabled="item.status == 1"
								></el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="角色">
							<el-select v-model="form.roleIds" multiple placeholder="请选择">
								<el-option
									v-for="item in roleOptions"
									:key="item.roleId"
									:label="item.roleName"
									:value="item.roleId"
									:disabled="item.status == 1"
								></el-option>
							</el-select>
						</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="24">
						<el-form-item label="备注">
							<el-input
								v-model="form.remark"
								type="textarea"
								placeholder="请输入内容"
							></el-input>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer>
				<div class="dialog-footer">
					<el-button type="primary" @click="submitForm">确 定</el-button>
					<el-button @click="cancel">取 消</el-button>
				</div>
			</template>
		</el-dialog>

		<!-- 用户导入对话框 -->
		<el-dialog
			:title="upload.title"
			v-model="upload.open"
			width="400px"
			append-to-body
		>
			<el-upload
				ref="uploadRef"
				:limit="1"
				accept=".xlsx, .xls"
				:headers="upload.headers"
				:action="upload.url + '?updateSupport=' + upload.updateSupport"
				:disabled="upload.isUploading"
				:on-progress="handleFileUploadProgress"
				:on-success="handleFileSuccess"
				:auto-upload="false"
				drag
			>
				<el-icon class="el-icon--upload"><upload-filled /></el-icon>
				<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
				<template #tip>
					<div class="el-upload__tip text-center">
						<div class="el-upload__tip">
							<el-checkbox
								v-model="upload.updateSupport"
							/>是否更新已经存在的用户数据
						</div>
						<span>仅允许导入xls、xlsx格式文件。</span>
						<el-link
							type="primary"
							:underline="false"
							style="font-size: 12px; vertical-align: baseline"
							@click="importTemplate"
							>下载模板</el-link
						>
					</div>
				</template>
			</el-upload>
			<template #footer>
				<div class="dialog-footer">
					<el-button type="primary" @click="submitFileForm">确 定</el-button>
					<el-button @click="upload.open = false">取 消</el-button>
				</div>
			</template>
		</el-dialog>
	</div>
</template>

<script lang="js" setup name="User">

import { createVNode } from 'vue'
import { getToken } from '@/utils/auth'
import { createButton, createSpaceGroup } from '@/utils/createElement'
import dayjs from 'dayjs'
import {
	ElButton,
	ElMessage,
	ElSpace,
	ElMessageBox,
	ElTransfer,
	ElTag,
	ElSwitch,
} from 'element-plus'
import DialogForm from '@/components/DialogForm/index.vue'
import ProTable from '@/components/ProTable/index.vue'
import {
	changeUserStatus,
	listUser,
	resetUserPwd,
	delUser,
	getUser,
	updateUser,
	addUser,
	deptTreeSelect,
} from '@/api/system/user'
import { getConfigKey } from '@/api/system/config.js'
import { nextTick } from 'vue'

const router = useRouter()
const { proxy } = getCurrentInstance()
const { sys_normal_disable, sys_user_sex } = proxy.useDict(
	'sys_normal_disable',
	'sys_user_sex'
)
const settingLR = reactive({
	minPercent: 3,
	defaultPercent: 15,
	split: 'vertical',
})
const userList = ref([])
const open = ref(false)
const loading = ref(true)
const showSearch = ref(true)
const ids = ref([])
const single = ref(true)
const multiple = ref(true)
const total = ref(0)
const title = ref('')
const dateRange = ref([])
const deptName = ref('')
const deptOptions = ref(undefined)
const initPassword = ref(undefined)
const postOptions = ref([])
const roleOptions = ref([])
/*** 用户导入参数 */
const upload = reactive({
	// 是否显示弹出层（用户导入）
	open: false,
	// 弹出层标题（用户导入）
	title: '',
	// 是否禁用上传
	isUploading: false,
	// 是否更新已经存在的用户数据
	updateSupport: false,
	// 设置上传的请求头部
	headers: { Authorization: 'Bearer ' + getToken() },
	// 上传的地址
	url: import.meta.env.VITE_APP_BASE_API + '/system/user/importData',
})
// 列显隐信息
const columns1 = shallowReactive([
	{
		prop: '勾选框',
		label: '勾选框',
		type: 'selection',
		minWidth: 40,
		align: 'center',
		showOverflowTooltip: false,
	},
	{
		prop: 'userId',
		label: '用户编号',
		minWidth: 100,
		align: 'center',
	},
	{
		prop: 'userName',
		label: '用户名称',
		minWidth: 100,
	},
	{
		prop: 'nickName',
		label: '用户昵称',
		minWidth: 100,
	},
	{
		prop: 'dept.deptName',
		label: '部门',
		minWidth: 140,
	},
	{
		prop: 'status',
		label: '状态',
		slot: 'status',
		minWidth: 80,
		align: 'center',
	},
	{
		prop: 'createTime',
		label: '创建时间',
		slot: 'createTime',
		minWidth: 160,
		align: 'center',
	},
	{
		prop: '操作',
		label: '操作',
		slot: 'operate',
		minWidth: 160,
		align: 'center',
		showOverflowTooltip: false,
	},
])
const data = reactive({
	form: {},
	queryParams: {
		pageNum: 1,
		pageSize: 15,
		userName: undefined,
		phonenumber: undefined,
		status: undefined,
		deptId: undefined,
	},
	rules: {
		userName: [
			{ required: true, message: '用户名称不能为空', trigger: 'blur' },
			{
				min: 2,
				max: 20,
				message: '用户名称长度必须介于 2 和 20 之间',
				trigger: 'blur',
			},
		],
		deptId: [
			{
				required: true,
				message: '请选择归属部门',
				trigger: ['blur', 'change'],
			},
		],
		nickName: [
			{ required: true, message: '用户昵称不能为空', trigger: 'blur' },
		],
		password: [
			{ required: true, message: '用户密码不能为空', trigger: 'blur' },
			{
				min: 5,
				max: 20,
				message: '用户密码长度必须介于 5 和 20 之间',
				trigger: 'blur',
			},
		],
		email: [
			{
				type: 'email',
				message: '请输入正确的邮箱地址',
				trigger: ['blur', 'change'],
			},
		],
		phonenumber: [
			{
				pattern: /^1[3|4|5|6|7|8|9][0-9]\d{8}$/,
				message: '请输入正确的手机号码',
				trigger: 'blur',
			},
		],
	},
})

const { queryParams, form, rules } = toRefs(data)

/** 通过条件过滤节点  */
function filterMethod1(query, node) {
	return node.label.includes(query)
}

/** 根据名称筛选部门树 */
function onQueryChanged(query) {
	proxy.$refs['deptTreeRef'].filter(query)
}
/** 查询部门下拉树结构 */
function getDeptTree() {
	deptTreeSelect()
		.then((response) => {

			deptOptions.value = response.data
			// 添加全部，value为空
			deptOptions.value.unshift({
				id: undefined,
				label: '全部',
			})
			return nextTick()
		})
		.then(() => {
			// 可以默认展开所有
			onQueryChanged('')
		})
}

/** 节点单击事件 */
function handleNodeClick(data) {
	queryParams.value.deptId = data.id
	handleQuery()
}
/** 搜索按钮操作 */
function handleQuery() {
	queryParams.value.pageNum = 1
	refreshTable()
}
/** 重置按钮操作 */
function resetQuery() {
	dateRange.value = []
	proxy.resetForm('queryRef')
	queryParams.value.deptId = undefined
	proxy.$refs.deptTreeRef.setCurrentKey(null)
	handleQuery()
}
/** 删除按钮操作 */
function handleDelete(row) {
	const userIds = row.userId || ids.value
	proxy.$modal
		.confirm('是否确认删除用户编号为"' + userIds + '"的数据项？')
		.then(function () {
			return delUser(userIds)
		})
		.then(() => {
			refreshTable()
			proxy.$modal.msgSuccess('删除成功')
		})
		.catch(() => {})
}
/** 导出按钮操作 */
function handleExport() {
	proxy.download(
		'system/user/export',
		{
			...queryParams.value,
		},
		`user_${new Date().getTime()}.xlsx`
	)
}

/** 用户状态修改  */
function handleStatusChange(row) {
	let text = row.status === '0' ? '启用' : '停用'
	proxy.$modal
		.confirm('确认要"' + text + '""' + row.userName + '"用户吗?')
		.then(function () {
			return changeUserStatus(row.userId, row.status)
		})
		.then(() => {
			proxy.$modal.msgSuccess(text + '成功')
		})
		.catch(function () {
			row.status = row.status === '0' ? '1' : '0'
		})
}
/** 更多操作 */
function handleCommand(command, row) {
	switch (command) {
		case 'handleResetPwd':
			handleResetPwd(row)
			break
		case 'handleAuthRole':
			handleAuthRole(row)
			break
		default:
			break
	}
}
/** 跳转角色分配 */
function handleAuthRole(row) {
	const userId = row.userId
	router.push('/system/user-auth/role/' + userId)
}
/** 重置密码按钮操作 */
function handleResetPwd(row) {
	proxy.$modal.prompt('请输入"' + row.userName + '"的新密码', '提示', {
			confirmButtonText: '确定',
			cancelButtonText: '取消',
			closeOnClickModal: false,
			inputPattern: /^.{5,20}$/,
			inputErrorMessage: '用户密码长度必须介于 5 和 20 之间',
		})
		.then(({ value }) => {
			resetUserPwd(row.userId, value).then((response) => {
				proxy.$modal.msgSuccess('修改成功，新密码是：' + value)
			})
		})
		.catch(() => {})
}

/** 导入按钮操作 */
function handleImport() {
	upload.title = '用户导入'
	upload.open = true
}
/** 下载模板操作 */
function importTemplate() {
	proxy.download(
		'system/user/importTemplate',
		{},
		`user_template_${new Date().getTime()}.xlsx`
	)
}
/**文件上传中处理 */
const handleFileUploadProgress = (event, file, fileList) => {
	upload.isUploading = true
}
/** 文件上传成功处理 */
const handleFileSuccess = (response, file, fileList) => {
	upload.open = false
	upload.isUploading = false
	proxy.$refs['uploadRef'].handleRemove(file)
	proxy.$alert(
		"<div style='overflow: auto;overflow-x: hidden;max-height: 70vh;padding: 10px 20px 0;'>" +
			response.msg +
			'</div>',
		'导入结果',
		{ dangerouslyUseHTMLString: true }
	)
	refreshTable()
}
/** 提交上传文件 */
function submitFileForm() {
	proxy.$refs['uploadRef'].submit()
}
/** 重置操作表单 */
function reset() {
	form.value = {
		userId: undefined,
		deptId: undefined,
		userName: undefined,
		nickName: undefined,
		password: undefined,
		phonenumber: undefined,
		email: undefined,
		sex: undefined,
		status: '0',
		remark: undefined,
		postIds: [],
		roleIds: [],
	}
	proxy.resetForm('userRef')
}
/** 取消按钮 */
function cancel() {
	open.value = false
	reset()
}
/** 新增按钮操作 */
function handleAdd() {
	reset()
	getUser().then((response) => {
		postOptions.value = response.posts
		roleOptions.value = response.roles
		open.value = true
		title.value = '添加用户'
		form.value.password = initPassword.value
	})
}
/** 修改按钮操作 */
function handleUpdate(row) {
	reset()
	const userId = row.userId || ids.value
	getUser(userId).then((response) => {
		form.value = response.data
		postOptions.value = response.posts
		roleOptions.value = response.roles
		form.value.postIds = response.postIds
		form.value.roleIds = response.roleIds
		open.value = true
		title.value = '修改用户'
		form.password = ''
	})
}
/** 提交按钮 */
function submitForm() {
	proxy.$refs['userRef'].validate((valid) => {
		if (valid) {
			if (form.value.userId != undefined) {
				updateUser(form.value).then((response) => {
					proxy.$modal.msgSuccess('修改成功')
					open.value = false
					refreshTable()
				})
			} else {
				addUser(form.value).then((response) => {
					proxy.$modal.msgSuccess('新增成功')
					open.value = false
					refreshTable()
				})
			}
		}
	})
}

getDeptTree()

// 分割
const proTable = ref()
const visible = ref(false)
// const title = ref('新增')
const getListFunc = listUser
const formFunc = ref()
const formData = ref({
	nickName: '',
})
const renderForm = [
	{
		field: 'nickName',
		label: '名称',
		type: 'input',
		placeholder: '请输入名称',
		required: true,
	},
]
const columns = [
	{
		type: 'seq',
		width: 60,
		treeNode: false, // 开启树图表
	},
	{ field: 'userId', title: 'ID', width: 80 },
	{ field: 'userName', title: '用户名称', width: 140 },
	{ field: 'nickName', title: '用户昵称', width: 140 },
	{
		field: 'dept',
		title: '部门',
		width: 140,
		formatter: (row) => {
			return row.dept ? row.dept.deptName : ''
		},
	},
	{
		field: 'status',
		title: '状态',
		width: 100,
		slots: {
			default: ({ row }) => {
				return createVNode(
					ElSwitch,
					{
						modelValue: row.status,
						activeValue: '0',
						inactiveValue: '1',
						onClick: () => {
							row.status = row.status === '0' ? '1' : '0'
							handleStatusChange(row)
						},
					},
					{}
				)
			},
		},
	},
	{
		field: 'createTime',
		title: '创建时间',
		formatter: (row) => {
			return dayjs(row.row.createTime).format('YYYY-MM-DD HH:mm:ss')
		},
	},
	{
		title: '操作',
		width: 340,
		align: 'center',
		fixed: 'right',
		slots: {
			default: ({ row }) => {
					return createSpaceGroup([
					createButton('primary', 'small', '编辑', () => handleUpdate(row)),
					createButton('success', 'small', '分配角色', () => handleAuthRole(row)),
					createButton('warning', 'small', '重置密码', () => handleResetPwd(row)),
					createButton('danger', 'small', '删除', () =>
					handleDelete(row)
					),
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
		field: 'nickName',
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

let dataSource = ref([])
const add = async () => {
	title.value = '新增'
	visible.value = true
	formData.value = renderForm.reduce((acc, cur) => {
		acc[cur.field] = ''
		return acc
	}, {})
	formFunc.value = adduser
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

</script>
