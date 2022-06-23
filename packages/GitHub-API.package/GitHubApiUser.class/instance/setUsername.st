helpers
setUsername

	(UIManager default 
		request: 'What is your GitHub username?' withCRs initialAnswer: (username 
			ifNil: [username := '']))
	ifNotNil: [:answer | username := answer]