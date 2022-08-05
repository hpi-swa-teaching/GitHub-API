methods
collaborators

	"returns all collaborators"

	| collaborators |
	
	collaborators := GitHubCollaborators new.
	collaborators
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ collaborators
		