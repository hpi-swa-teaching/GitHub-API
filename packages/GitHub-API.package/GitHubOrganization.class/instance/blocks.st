methods
blocks

	"returns all blocked users"

	| blocks |
	
	blocks := GitHubOrganizationBlockingUsers new.
	blocks
		apiUser: self apiUser;
		organizationname: self organizationname.
		
	^ blocks
	