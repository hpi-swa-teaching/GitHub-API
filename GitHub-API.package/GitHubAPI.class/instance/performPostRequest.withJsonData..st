requestsHttp
performPostRequest: aURL withJsonData: json

	| client response |
	client := WebClient new.
	response := client 
		httpPost: aURL
		content: json asJsonString
		type: 'application/json' 
		do: [:request | request headerAt: 'Authorization' put: 'token ' , self class token].
	
	^ Json readFrom: response content utf8ToSqueak readStream
	