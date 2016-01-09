as yet unclassified
renderContentOn: html	
	html orderedList: [ 
		PBArticle root sortedChildren do: [ :a |
			html listItem: [
				html anchor url: PBPillarBookApplication baseUrl, '/', a reference; with: a title.
			] ] ].

	self renderButtonsOn: html