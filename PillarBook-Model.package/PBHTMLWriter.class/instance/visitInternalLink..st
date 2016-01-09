visiting-document
visitInternalLink: anInternalLink
	| href article tag |
	
	anInternalLink hasReference ifFalse: [ ^super visitInternalLink: anInternalLink  ]. 
	article := PBArticle selectWithReference: anInternalLink reference. "nil if not found"

	href := (article ifNil: [ PBArticle new reference: anInternalLink reference; yourself ]) url. "build the right url"
	
	anInternalLink hasAnchor
		ifTrue: [ href := self addAnchorFrom: anInternalLink To: href ].
		
	tag := canvas tag.
	tag
		name: 'a';
		parameterAt: 'href' put: href.
	article ifNil: [ tag parameterAt: 'style' put: 'color: red' ].
	tag with: [
		anInternalLink hasAlias 
			ifTrue: [ canvas nextPutAll: ' '. self visitLink: anInternalLink ] 
			ifFalse: [ article ifNotNil: [  canvas nextPutAll: article title ] ifNil: [ self visitLink: anInternalLink ] ] ]