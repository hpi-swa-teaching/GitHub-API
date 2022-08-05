methods
latest

	"returns the latest release"

	| release |
	
	release := GitHubRelease new.
	release
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		releaseIdentifier: 'latest'.
	
	^ release