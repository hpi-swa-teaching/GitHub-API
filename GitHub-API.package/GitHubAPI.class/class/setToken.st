setting
setToken

	(UIManager default
			request: 'What is your GitHub OAUTH Token?' withCRs
			initialAnswer: (Token ifNil: [Token := '']))
		ifNotNil: [:answer | Token := answer]