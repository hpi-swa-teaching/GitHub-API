helpers
setToken

	(UIManager default 
		request: 'What is your GitHub OAuth token?' withCRs initialAnswer: (token 
			ifNil: [token := '']))
	ifNotNil: [:answer | token := answer]