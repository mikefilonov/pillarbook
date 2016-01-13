as yet unclassified
renderSplitContentOn: html
	html tbsColumn  mediumSize: 6; with: [ 
		html div id: 'editor'; with: [ 
			self renderEditorOn: html ] ].
		
	html tbsColumn mediumSize: 6; with: [ 
		html div id: 'previewPanel'; with: [
			html html: self article resolvedHtml ] ]	
	
	
	
	