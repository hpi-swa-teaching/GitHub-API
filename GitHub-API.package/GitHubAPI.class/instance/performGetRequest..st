requestsHttp
performGetRequest: aURL

	| client response |
	client := WebClient new.
	response := client 
		httpGet: aURL 
		do: [:request | request headerAt: 'Authorization' put: 'token ' , self class token].
	
	^ STONJSON fromStream: response content readStream.
	