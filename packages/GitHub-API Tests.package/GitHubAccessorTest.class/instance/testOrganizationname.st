as yet unclassified
testOrganizationname

	(gitHubObject isNil) ifTrue: [^true].

	self test: gitHubObject withAccessor: #organizationname andValue: self defaultOrganizationname.