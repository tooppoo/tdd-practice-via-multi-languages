Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #TddByExample
}

{ #category : #configurations }
Bank >> rateOf: aCurrency1 to: aString2 is: anInteger [ 
	
	
]

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [
	^source reduce: self to: toCurrency.

]
