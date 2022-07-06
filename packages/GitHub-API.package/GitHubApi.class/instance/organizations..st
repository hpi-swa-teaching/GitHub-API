methods
organizations: anOrganizationname

	| organization |
	
	organization := GitHubOrganization new.
	organization
		apiUser: self apiUser;
		organizationname: anOrganizationname.
		
	^ organization