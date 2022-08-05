methods
releases: aReleaseIdentifier

	"returns a specific release identified by tag or release id"

	| release |
	
	release := GitHubRelease new.
	release
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		releaseIdentifier: aReleaseIdentifier.
		
	^ release
		