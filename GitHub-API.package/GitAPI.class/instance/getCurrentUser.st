requestsAPI
getCurrentUser
	
	^ self performGetRequest: 'https://api.github.com/user'