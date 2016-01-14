as yet unclassified
publishToEphemeric: ecClient named: imageName alias: alias
	|isNew result |
	isNew := Smalltalk backupTo: imageName.
	isNew ifTrue: [ "start application"
		WAAdmin clearAll.
		WAAdmin disableDevelopmentTools.
		PBViewApplication registerAt: self defaultBaseUrl.
		PBArticle exportDirectory: nil. "worl as default"
		WAAdmin defaultDispatcher defaultName: self defaultBaseUrl.
		WAAdmin register: WAFileHandler at: 'files'. "standard libraries"
		];
	ifFalse: [
		|archive|
		archive := ZipArchive new
			addFile: imageName,'.image';
			addFile: imageName,'.changes';
			yourself.

		(PBArticle exportDirectory / #figures) files do: [: file |
			archive addMember: (ZipNewFileMember new 
				from: file;
				localFileName: 'PillarBook/', (String streamContents: [:s | (file relativeToReference: PBArticle exportDirectory) printOn: s delimiter: $/]); 
				yourself) ].
		archive writeToFileNamed: imageName,'.zip'.
		
		
		ZnConstants maximumEntitySize: 50*1024*1024.
		result := (ecClient publishZip: imageName,'.zip' named: imageName).		
	 	alias ifNotEmpty: [ [(ecClient / self alias) isRunning: false] on: Exception do: []. result alias:  alias ].
		^result.		
		]
	

	

	