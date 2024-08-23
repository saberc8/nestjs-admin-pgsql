import request from '@/utils/request'

export const getAttributesList = (params) => {
	return request({
		url: '/attributes/list',
		method: 'get',
		params,
	})
}

export const addAttributes = (data) => {
	return request({
		url: '/attributes/add',
		method: 'post',
		data,
	})
}

export const updateAttributes = (data) => {
	return request({
		url: '/attributes/update',
		method: 'put',
		data,
	})
}

export const deleteAttributes = (id) => {
	return request({
		url: `/attributes/delete/${id}`,
		method: 'delete',
	})
}

export const bindAttributesValue = (id, data) => {
	return request({
		url: `/attributes/bind/${id}`,
		method: 'post',
		data,
	})
}
