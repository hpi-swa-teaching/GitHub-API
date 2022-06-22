helper
encodeQueryParameters: queryParametersDictionary

	| queryString |
	
	queryString := '?'.
	
	queryParametersDictionary keysAndValuesDo: [:parameter :value |
		queryString := queryString , parameter , '=' , (value asString) encodeForHTTP , '&'].

	^ queryString