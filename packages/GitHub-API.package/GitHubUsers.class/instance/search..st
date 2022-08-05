parameters
search: aSearchParameterDictionary

	"search for users"

	| result |
	
	"search uses a different endpoint"
	self path: '/search/users'.
	result := super search: aSearchParameterDictionary.
	"reset path, as search endpoint isn't considered as default"
	self path: nil.
	
	^ result	