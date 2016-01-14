export
exportDirectory
	^exportDirectory ifNil: [ FileSystem disk workingDirectory resolvePath: (RelativePath withAll: {'PillarBook'}) ]