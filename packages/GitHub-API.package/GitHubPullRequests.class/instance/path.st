accessing
path

	^ commitSHA 
			ifNil: [^ '/repos/' , owner , '/' , reponame , '/pulls']
			ifNotNil: [^ '/repos/' , owner , '/' , reponame , '/commits/' , commitSHA , '/pulls'] 
				