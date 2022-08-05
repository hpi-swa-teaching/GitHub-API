methods
organizations: anOrganizationname

	"returns an organization by name"

	| organization |
	
	organization := GitHubOrganization new.
	organization
		apiUser: self apiUser;
		organizationname: anOrganizationname.
		
	^ organization