accessing
columnId

	^ columnId ifNil: [columnId := self getColumnId]