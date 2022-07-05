methods
releases: aReleaseIdentifier

	| release |
	
	release := GitHubRelease new.
	release
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		releaseIdentifier: aReleaseIdentifier.
		
	^ release
		