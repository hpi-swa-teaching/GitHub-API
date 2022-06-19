helper
encodeQueryParameters: aQueryParameterDictionary

	| queryString |
	
	queryString := '?'.
	
	aQueryParameterDictionary keysAndValuesDo: [:parameter :value |
		queryString := queryString , parameter , '=' , (value asString) encodeForHTTP , '&'].

	^ queryString