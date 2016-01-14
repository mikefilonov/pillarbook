as yet unclassified
renderContentOn: html
		html tbsPanel beDefault; with: [ 
		html tbsPanelHeading: [ html tbsPanelTitle: 'Publish To Ephemeric Cloud' ].
		html tbsPanelBody: [ self renderFormOn: html ].
		
		
		 ]