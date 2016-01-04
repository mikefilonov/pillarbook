components
articleView
	^articleView ifNil: [ self article ifNil: [ nil ] ifNotNil: [ articleView := self createArticleView ] ]