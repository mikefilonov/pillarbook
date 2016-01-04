export
export
	self exportDirectory ensureCreateDirectory.
	(self exportDirectory / self reference, 'pillar') writeStreamDo: [ :s | s nextPutAll: self pillarBody ].