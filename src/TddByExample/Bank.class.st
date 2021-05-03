Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #TddByExample
}

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [ 
	| sum |
	sum := source augend price + source addend price.
	
	^Money valueOf: sum currency: toCurrency.
]
