as yet unclassified
handleFiltered: aRequestContext
	|path realm filename|

	path := aRequestContext consumer upToEnd.
	
	realm := path allButLast.
	filename := path last.
	
	aRequestContext respond: [ :response |
				response
					cacheFor: self cacheDuration;
					document: (self contentsOfFile: filename)
					mimeType: (self mimetypeForFile: filename) ]