methods
auditLog

	"returns the audit log"

	| auditLog |
	
	auditLog := GitHubOrganizationAuditLog new.
	auditLog
		apiUser: self apiUser;
		organizationname: self organizationname.
		
	^ auditLog
	