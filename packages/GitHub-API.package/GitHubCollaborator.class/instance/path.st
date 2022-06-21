accessing
path

	^ path ifNil: [path := '/repos/' , self owner , '/' , self reponame , '/collaborators/' , self username , '/permission']