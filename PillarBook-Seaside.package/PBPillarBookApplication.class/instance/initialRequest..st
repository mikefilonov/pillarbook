hooks
initialRequest: aRequest
	super initialRequest: aRequest.
	(aRequest uri path size = 2) 
		ifTrue: [
			self article: (PBArticle root children detect: [:a | a reference = aRequest uri path last  ] ifNone: [nil])]
		ifFalse: [ 
			PBArticle root children ifNotEmpty: [ self article: PBArticle root children first ] ]