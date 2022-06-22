helper
getCollaboratorByName: aUsername

	| collaborators collaborator |
	
	collaborators := GitHubCollaborators new
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
	
	collaborator := collaborators detect: [:p | (p at: 'login') = aUsername] ifNone: [].
	collaborator ifNil: [self error: 'Collaborator ' , aUsername , ' not found!'] 
		ifNotNil: [^ GitHubCollaborator new
			apiUser: self apiUser;
			owner: self owner;
			reponame: self reponame;
			username: aUsername]