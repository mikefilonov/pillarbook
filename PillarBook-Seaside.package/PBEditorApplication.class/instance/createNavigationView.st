components
createNavigationView
	^PBArticleEditList new article: self article ; onPublish: [self publish]; yourself 