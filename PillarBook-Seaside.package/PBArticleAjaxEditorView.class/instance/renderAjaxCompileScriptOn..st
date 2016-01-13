as yet unclassified
renderAjaxCompileScriptOn: html
	^(html jQuery post
		serializeForm;
		script: [ :s | 
			self article compile.
			s 
				<< ((s jQuery: '#previewPanel') html: [: c | c html: self article resolvedHtml]);
				<< ((s jQuery: '#autosave') html: [: c | c render: 'Saved at ', ((self article updateTime asTime print24 subStrings: '.')at: 1)])
			])