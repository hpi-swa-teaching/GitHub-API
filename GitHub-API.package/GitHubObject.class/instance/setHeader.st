http methods
setHeader

	^ [:request | 
			request headerAt: 'Authorization' put: 'token ' , self token.
			request headerAt: 'Accept' put: 'application/vnd.github.v3+json'
		]