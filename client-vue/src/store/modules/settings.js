import defaultSettings from '@/settings'
import { useDynamicTitle } from '@/utils/dynamicTitle'
import { getWeb } from '@/api/login.js'
const {
	sideTheme,
	showSettings,
	topNav,
	tagsView,
	fixedHeader,
	sidebarLogo,
	dynamicTitle,
} = defaultSettings

const useSettingsStore = defineStore('settings', {
	state: () => ({
		title: '',
		theme: '#2f54eb',
		sideTheme: sideTheme,
		showSettings: showSettings,
		topNav: undefined,
		tagsView: undefined,
		fixedHeader: undefined,
		sidebarLogo: undefined,
		dynamicTitle: undefined,
	}),
	actions: {
		// 初始化布局设置
		initSetting() {
			return new Promise((resolve, reject) => {
				getWeb()
					.then(({ data }) => {
						const storageSetting = data || {}
						this.theme = storageSetting.theme || '#2f54eb'
						this.sideTheme = storageSetting.sideTheme || sideTheme
						this.showSettings = showSettings
						this.topNav =
							storageSetting.topNav === undefined
								? topNav
								: storageSetting.topNav
						this.tagsView =
							storageSetting.tagsView === undefined
								? tagsView
								: storageSetting.tagsView
						this.fixedHeader =
							storageSetting.fixedHeader === undefined
								? fixedHeader
								: storageSetting.fixedHeader
						this.sidebarLogo =
							storageSetting.sidebarLogo === undefined
								? sidebarLogo
								: storageSetting.sidebarLogo
						this.dynamicTitle =
							storageSetting.dynamicTitle === undefined
								? dynamicTitle
								: storageSetting.dynamicTitle
						resolve()
					})
					.catch((error) => {
						reject(error)
					})
			})
		},
		// 修改布局设置
		changeSetting(data) {
			const { key, value } = data
			if (Reflect.has(this, key)) {
				this[key] = value
			}
		},
		// 设置网页标题
		setTitle(title) {
			this.title = title
			useDynamicTitle()
		},
	},
})

export default useSettingsStore
