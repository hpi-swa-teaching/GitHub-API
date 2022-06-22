accessing
path

	^ path ifNil: [path := '/repos/' , self owner , '/' , self reponame , '/pulls/' , self pullNumber , '/files']