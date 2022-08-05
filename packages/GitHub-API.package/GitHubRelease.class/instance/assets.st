methods
assets

	"returns all assets"

	| assets |
	
	assets := GitHubReleaseAssets new.
	assets
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		releaseId: self getReleaseId.
		
	^ assets
		