as yet unclassified
testPath
	
	gitHubObject := GitHubCollaborator new owner: self defaultOwner;
		reponame: self defaultReponame;
		username: self defaultUsername;
		yourself.
		
	super testPathForReturn: '/repos/', self defaultOwner, '/', self defaultReponame,'/collaborators/', self defaultUsername,'/permission'