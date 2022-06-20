http methods
performGetRequest: aUrl

	| client response |
	client := WebClient new.
	
	response := client
		httpGet: aUrl
		do: self setHeader.
	
	^ self handleResponse: response