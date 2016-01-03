components
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	self article ifNotNil: [ anHtmlRoot title: self article title ]