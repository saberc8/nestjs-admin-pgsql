import request from '@/utils/request'

export const getIndicatorsList = (params) => {
	return request({
		url: '/indicators/list',
		method: 'get',
		params,
	})
}

export const addIndicators = (data) => {
	return request({
		url: '/indicators/add',
		method: 'post',
		data,
	})
}

export const updateIndicators = (data) => {
	return request({
		url: '/indicators/update',
		method: 'put',
		data,
	})
}

export const deleteIndicators = (id) => {
	return request({
		url: `/indicators/delete/${id}`,
		method: 'delete',
	})
}

export const bindAttributes = (id, data) => {
	return request({
		url: `/indicators/bindAttributes/${id}`,
		method: 'post',
		data,
	})
}
