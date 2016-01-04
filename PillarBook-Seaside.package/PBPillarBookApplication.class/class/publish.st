as yet unclassified
publish
	WAAdmin clearAll.
	WAAdmin disableDevelopmentTools.
	WAAdmin defaultDispatcher defaultName: 'kb'.
	PBViewApplication registerAt: 'kb'.
	WAAdmin register: WAFileHandler at: 'files'. "standard libraries"
	WAAdmin register: PBFiguresFileLibrary at: 'figures'

	

	