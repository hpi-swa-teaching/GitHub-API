accessing
projectname
	
	^ projectname ifNil: [self error: 'No project name provided!']