Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #TddByExample
}

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [
	^source reduce: toCurrency.
]
