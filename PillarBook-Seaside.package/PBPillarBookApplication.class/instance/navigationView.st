components
navigationView
	^navigationView ifNil: [ navigationView := PBArticleList new ]