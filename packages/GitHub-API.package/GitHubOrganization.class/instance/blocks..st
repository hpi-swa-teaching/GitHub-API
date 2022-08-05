methods
blocks: aUsername

	"returns a specific blocked user"

	| block |
	
	block := GitHubOrganizationBlockingUser new.
	block
		apiUser: self apiUser;
		organizationname: self organizationname;
		username: aUsername.
		
	^ block
	