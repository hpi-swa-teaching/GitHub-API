http methods
delete

	| client response |
	
	client := WebClient new.
	
	response := client
		httpDelete: self baseURL , self path
		do: self setHeader.
	
	^ self handleResponse: response