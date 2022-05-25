requestsHttp
performGetRequest: anURL

	| client response jsonResponse |
	client := WebClient new.
	response := client httpGet: anURL do:[:req | req headerAt: 'Authorization' put: 'token ' , self token].
	jsonResponse := STONJSON fromStream: response content readStream.
	^jsonResponse