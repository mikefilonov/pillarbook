as yet unclassified
publishToEphemeric: ecClient named: imageName
	|isNew|
	isNew := Smalltalk backupTo: imageName.
	isNew ifTrue: [ "start application"
		WAAdmin clearAll.
		WAAdmin disableDevelopmentTools.
		PBViewApplication registerAt: self defaultBaseUrl.
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
				localFileName: (String streamContents: [:s | (file relativeToReference: PBArticle exportDirectory parent) printOn: s delimiter: $/]); 
				yourself) ].
		archive writeToFileNamed: imageName,'.zip'.
		
		
		ZnConstants maximumEntitySize: 50*1024*1024.
		^(ecClient publishZip: imageName,'.zip' named: imageName).					
		]
	

	

	