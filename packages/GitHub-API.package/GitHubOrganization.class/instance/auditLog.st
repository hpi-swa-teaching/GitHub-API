methods
auditLog

	| auditLog |
	
	auditLog := GitHubOrganizationAuditLog new.
	auditLog
		apiUser: self apiUser;
		organizationname: self organizationname.
		
	^ auditLog
	