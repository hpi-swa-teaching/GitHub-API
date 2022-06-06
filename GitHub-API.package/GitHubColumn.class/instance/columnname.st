accessing
columnname

	^ columnname ifNil: [self error: 'No column name provided!']