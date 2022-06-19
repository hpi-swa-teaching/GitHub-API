accessing
reponame

	^ reponame ifNil: [self error: 'No reponame provided!']