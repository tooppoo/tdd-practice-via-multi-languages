Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #TddByExample
}

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [
	^(source isKindOf: Money)
		ifTrue: [ ^source reduce: toCurrency ];
		ifFalse: [ ^source reduce: toCurrency ].

]
