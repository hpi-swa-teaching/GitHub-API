test query parameter encoding
testEncodeQueryParameters

	| queryParameters expectedEncoding |
	queryParameters := Dictionary newFrom: {
		"param1 contains all possible special characters, which require to be encoded"
		'param1' -> ' !#$%&()*+,/:;=?@[]UÖÄüöä'.
		"param2 is used to test, if multiple parameters get encoded correctly"
		'param2' -> 'random second parameter!'
	}.
	
	expectedEncoding := '?param1=%20%21%23%24%25%26%28%29%2A%2B%2C%2F%3A%3B%3D%3F%40%5B%5DU%C3%96%C3%84%C3%BC%C3%B6%C3%A4&param2=random%20second%20parameter%21&'.
	
	self assert: ((self gitHubObject encodeQueryParameters: queryParameters) = expectedEncoding)