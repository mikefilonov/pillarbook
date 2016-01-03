as yet unclassified
renderEditorOn: html
	html form  with: [ 
		html textArea id: 'valueHolder'; style: 'width:100%; min-height: 100px; overflow-y: visible;'; rows: 30; class: 'form-control'; on: #pillarBody of: self article.
		html div class: 'btn'; class: 'btn-default'; id: 'autosave'; onClick: (self renderAjaxCompileScriptOn: html); with: 'Save'.
		self renderAutosaveScriptOn: html ]