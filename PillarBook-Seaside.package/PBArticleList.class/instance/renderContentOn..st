as yet unclassified
renderContentOn: html
	html orderedList: [ 
		PBArticle root sortedChildren do: [ :article |
			html listItem: [
				html anchor url: article url; with: article title.
			] ] ].
	
	html anchor callback: [ PBArticle root addChild: PBArticle new ]; with: '+ Add new'.