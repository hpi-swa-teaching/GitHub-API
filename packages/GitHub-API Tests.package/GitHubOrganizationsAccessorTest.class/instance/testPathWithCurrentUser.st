as yet unclassified
testPathWithCurrentUser
	
	gitHubObject apiUser: (GitHubUser new username: self defaultUsername);
		username: self defaultUsername;
		yourself.
	
	super testPathForReturn: '/user/orgs'