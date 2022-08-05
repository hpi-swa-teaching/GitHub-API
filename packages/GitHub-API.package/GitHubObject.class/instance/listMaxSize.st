accessing
listMaxSize

	"maximum number of items, when using list method"

	^ listMaxSize ifNil: [listMaxSize := 1000]