as yet unclassified
testPath
	
	gitHubObject apiUser: (GitHubUser new username: self defaultUsername);
		username: self defaultUsername, self defaultUsername;
		yourself.
	
	super testPathForReturn: '/users/', self defaultUsername, self defaultUsername,'/orgs'