hooks
initialRequest: aRequest
	super initialRequest: aRequest.
	(aRequest uri path size = 2)
		ifTrue: [
			self article: (PBArticle root children detect: [:a | a reference = aRequest uri path last  ] ifNone: [nil])]
		ifFalse: [ 
			self article: PBArticle root defaultChild ]