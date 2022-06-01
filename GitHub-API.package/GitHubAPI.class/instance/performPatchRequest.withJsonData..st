requestsHttp
performPatchRequest: aURL withJsonData: json

	| client response |
	client := WebClient new.
	response := client 
		httpPatch: aURL 
		content: json asJsonString 
		type: 'application/json' 
		do:  [:req | req headerAt: 'Authorization' put: 'token ' , self class token].
	
	^ Json readFrom: response content utf8ToSqueak readStream
	