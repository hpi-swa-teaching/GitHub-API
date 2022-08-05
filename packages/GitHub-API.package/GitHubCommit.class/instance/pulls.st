methods
pulls
	
	"returns all pull requests associated with the commit"
	
	| pulls |
	
	pulls := GitHubPullRequests new.
	pulls
		apiUser: self apiUser;
		owner: self owner;
		reponame: self reponame;
		commitSHA: self commitSHA.
	
	^ pulls