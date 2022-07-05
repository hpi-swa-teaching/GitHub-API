methods
latest

	| release |
	
	release := GitHubRelease new.
	release
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		releaseIdentifier: 'latest'.
	
	^ release