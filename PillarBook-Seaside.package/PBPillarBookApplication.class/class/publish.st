as yet unclassified
publish
	|isNew|
	isNew := Smalltalk backupTo: 'publish'.
	isNew ifTrue: [ 
		WAAdmin clearAll.
		WAAdmin disableDevelopmentTools.
		WAAdmin defaultDispatcher defaultName: 'kb'.
		PBViewApplication registerAt: 'kb'.
		WAAdmin register: WAFileHandler at: 'files'. "standard libraries"
		];
	ifFalse: [
		ZipArchive new
			addFile: 'publish.image';
			addFile: 'publish.changes';
			addDirectory: PBArticle exportDirectory;
			writeToFileNamed: 'publish.zip'.			
		]



	

	