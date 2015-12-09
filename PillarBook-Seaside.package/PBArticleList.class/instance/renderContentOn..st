as yet unclassified
renderContentOn: html

	html text: 'hello Seaside!'.
	
	html orderedList: [ 
		PBArticle root children do: [ :article |
			html listItem: [
				html anchor url: article url; with: article title.
			] ] ].
	
	html anchor callback: [ PBArticle root children add: PBArticle new ]; with: '+ Add new' 