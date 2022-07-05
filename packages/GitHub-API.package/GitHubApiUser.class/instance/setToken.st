helpers
setToken

	(UIManager default requestPassword:  'What is your GitHub OAuth token?') 
		ifNotNil: [:answer | token := answer]