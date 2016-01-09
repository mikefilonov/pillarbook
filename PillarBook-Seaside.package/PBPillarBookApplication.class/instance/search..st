search
search: aQuery
	|result|
	result := PBArticle root children select: [ :a | a match: aQuery ].
	self layout mainComponent: (PBSearchComponent  new articles: result; query: aQuery; yourself).
	