Trait {
	#name : #Expression,
	#category : #TddByExample
}

{ #category : #operators }
Expression >> + aMoney [ 
	^Sum augend: self addend: aMoney.
]
