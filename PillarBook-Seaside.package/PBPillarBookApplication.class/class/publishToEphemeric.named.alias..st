as yet unclassified
publishToEphemeric: ecClient named: imageName alias: alias
	|isNew result |
	isNew := ecClient publishSelfAs: imageName with: [ :archive | 
		(PBArticle exportDirectory / #figures) files do: [: file |
			archive addMember: (ZipNewFileMember new 
				from: file;
				localFileName: 'PillarBook/', (String streamContents: [:s | (file relativeToReference: PBArticle exportDirectory) printOn: s delimiter: $/]);  "workaround to get string representation of relative path to export directory"
				yourself) ].].
	
	isNew ifTrue: [ "We are in ephemeric cloud"
		WAAdmin clearAll.
		WAAdmin disableDevelopmentTools.
		PBViewApplication registerAt: self defaultBaseUrl.
		PBArticle exportDirectory: nil. "worl as default"
		WAAdmin defaultDispatcher defaultName: self defaultBaseUrl.
		WAAdmin register: WAFileHandler at: 'files'. "standard libraries"
		^nil.
		];
	ifFalse: [ "in parent image"
		result := ecClient lastPublishedInstance.
	 	alias ifNotEmpty: [ [(ecClient / self alias) isRunning: false] on: Exception do: []. result alias: alias ].
		^result.		
		]
	

	

	