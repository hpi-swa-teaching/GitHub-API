accessing
token

	^ token ifNil: [self error: 'No token provided!']