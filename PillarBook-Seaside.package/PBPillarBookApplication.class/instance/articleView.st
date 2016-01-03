components
articleView
	^articleView ifNil: [ self article ifNil: [ nil ] ifNotNil: [ articleView := PBArticleAjaxEditorView new article: self article ] ]