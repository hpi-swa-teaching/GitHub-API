methods
releases

	| releases |
	
	releases := GitHubReleases new.
	releases
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame.
		
	^ releases
		