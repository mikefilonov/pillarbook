container
addChild: anArticle
	anArticle precedence ifNil: [ anArticle precedence: self nextPrecedence ].
	self children add: anArticle.