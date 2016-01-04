export
exportChildren
	(self exportDirectory filesMatching: '*.pillar') do: [ :file | file delete ].
	self children do: [ :article | article export ]