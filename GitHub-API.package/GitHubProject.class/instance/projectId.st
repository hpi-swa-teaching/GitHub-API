accessing
projectId

	^ projectId ifNil: [projectId := self getProjectId]