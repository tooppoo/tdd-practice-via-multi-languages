Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #TddByExample
}

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [
	^(source isKindOf: Money)
		ifTrue: [ ^source ];
		ifFalse: [ ^source reduce: toCurrency ].

]
