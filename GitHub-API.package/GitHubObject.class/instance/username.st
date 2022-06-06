accessing
username

	^ username ifNil: [self error: 'No username provided!']