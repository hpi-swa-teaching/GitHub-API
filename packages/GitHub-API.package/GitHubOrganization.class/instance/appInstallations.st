methods
appInstallations

	"returns all app installations"

	| appInstallations |
	
	appInstallations := GitHubOrganizationAppInstallations new.
	appInstallations
		apiUser: self apiUser;
		organizationname: self organizationname.
		
	^ appInstallations
	