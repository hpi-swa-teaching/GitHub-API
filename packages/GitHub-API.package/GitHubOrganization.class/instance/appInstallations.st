methods
appInstallations

	| appInstallations |
	
	appInstallations := GitHubOrganizationAppInstallations new.
	appInstallations
		apiUser: self apiUser;
		organizationname: self organizationname.
		
	^ appInstallations
	