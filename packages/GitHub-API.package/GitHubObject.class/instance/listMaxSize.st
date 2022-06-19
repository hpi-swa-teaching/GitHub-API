accessing
listMaxSize

	^ listMaxSize ifNil: [listMaxSize := 1000]