container
addChild: anArticle
	anArticle reference ifNil: [ anArticle reference: self nextReference ].
	self children add: anArticle.