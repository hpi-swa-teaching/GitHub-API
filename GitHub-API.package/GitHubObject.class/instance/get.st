http methods
get

	| client response |
	
	client := WebClient new.
	
	response := client
		httpGet: self baseURL , self path
		do: self setHeader.
	
	^ self handleResponse: response