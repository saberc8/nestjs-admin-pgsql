import request from '@/utils/request'

export const getSurveyItemsList = (params) => {
	return request({
		url: '/surveyItems/list',
		method: 'get',
    params
	})
}

export const addSurveyItems  = (data) => {
	return request({
		url: '/surveyItems/add',
		method: 'post',
    data
	})
}

export const updateSurveyItems = (data) => {
  return request({
    url: '/surveyItems/update',
    method: 'put',
    data
  })
}

export const deleteSurveyItems = (id) => {
  return request({
    url: `/surveyItems/delete/${id}`,
    method: 'delete'
  })
}

// bindIndicators
export const bindIndicators = (id, data) => {
	return request({
		url: `/surveyItems/bindIndicators/${id}`,
		method: 'post',
		data,
	})
}

