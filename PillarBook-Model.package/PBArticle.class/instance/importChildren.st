export
importChildren
	PBArticle root children removeAll.
	(self exportDirectory filesMatching: '*.pillar') do: [ :file | 
		|article|
		article := PBArticle new pillarBody: file contents; compile; yourself.
		article reference ifNil: [ article reference: file basenameWithoutExtension ].
		self addChild: article.

		]