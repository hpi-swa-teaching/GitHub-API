methods
blocks: aUsername

	| block |
	
	block := GitHubOrganizationBlockingUser new.
	block
		apiUser: self apiUser;
		organizationname: self organizationname;
		username: aUsername.
		
	^ block
	