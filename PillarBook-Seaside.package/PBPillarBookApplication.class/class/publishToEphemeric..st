as yet unclassified
publishToEphemeric: ecClient
	Smalltalk saveAsNewVersion.
	
	WAAdmin clearAll.
	WAAdmin disableDevelopmentTools.
	WAAdmin defaultDispatcher defaultName: 'kb'.
	PBViewApplication registerAt: 'kb'.
	WAAdmin register: WAFileHandler at: 'files'. "standard libraries"
	

	

	