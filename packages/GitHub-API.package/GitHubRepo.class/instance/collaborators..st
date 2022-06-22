methods
collaborators: aUsername

	| collaborators collaborator |
	
	collaborators := GitHubCollaborators new
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	collaborators := collaborators list.
	
	collaborator := collaborators detect: [:p | (p at: 'login') = aUsername] ifNone: [].
	collaborator ifNil: [self error: 'Collaborator ' , aUsername , ' not found!'].
	
	^ GitHubCollaborator new
			apiUser: self apiUser;
			owner: self owner;
			reponame: self reponame;
			username: aUsername
		