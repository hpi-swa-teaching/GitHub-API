parameters
search: aSearchParameterDictionary
	
	| result |
	
	"Search path differs from normal users path"
	self path: '/search/users'.
	result := super search: aSearchParameterDictionary.
	"Search path isn't considered a default path -> needs to be reset"
	self path: nil.
	
	^ result