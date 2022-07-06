accessing
path

	^ path ifNil: [path := '/orgs/' , self organizationname , '/blocks']