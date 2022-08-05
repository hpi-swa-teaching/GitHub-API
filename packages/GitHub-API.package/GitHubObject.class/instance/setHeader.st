http methods
setHeader

	^ [:request | 
			request headerAt: 'Authorization' put: 'token ' , self apiUser token.
			request headerAt: 'Accept' put: 'application/vnd.github.v3+json']