import request from '@/utils/request'

export const getHabitatList = (params) => {
	return request({
		url: '/habitat/list',
		method: 'get',
    params
	})
}

export const addHabitat  = (data) => {
	return request({
		url: '/habitat/add',
		method: 'post',
    data
	})
}

export const updateHabitat = (data) => {
  return request({
    url: '/habitat/update',
    method: 'put',
    data
  })
}

export const deleteHabitat = (id) => {
  return request({
    url: `/habitat/delete/${id}`,
    method: 'delete'
  })
}

export const getHabitatDetail = (id) => {
  return request({
    url: `/habitat/${id}`,
    method: 'get'
  })
}

// saveSurveyData
export const saveSurveyData = (data) => {
  return request({
    url: '/habitat/saveSurveyData',
    method: 'post',
    data
  })
}

export const getSurveyData = (params) => {
  return request({
    url: '/habitat/surveyData/data',
    method: 'get',
    params
  })
}
