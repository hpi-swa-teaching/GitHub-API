accessing
baseURL

	^ baseURL ifNil: [baseURL := 'https://api.github.com']