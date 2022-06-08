http methods
performDeleteRequest: aUrl

	| client response |
	client := WebClient new.
	
	response := client
		httpDelete: aUrl
		do: self setHeader.

	^ self handleResponse: response