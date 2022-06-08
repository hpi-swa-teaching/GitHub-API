parameters
search: searchParameterDictionary
	
	| result |
	
	self path: '/search/users'.
	result := super search: searchParameterDictionary.
	self path: nil.
	
	^ result