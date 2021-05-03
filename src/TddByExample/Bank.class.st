Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'config'
	],
	#category : #TddByExample
}

{ #category : #constructor }
Bank class >> new [
	^super new
		config: Dictionary new;
		yourself.
]

{ #category : #private }
Bank >> config: aConfig [ 
	config := aConfig.
]

{ #category : #calculations }
Bank >> rateFrom: from to: to [
	| key |
	key := Array with: from with: to.
	
	^config at: key.
]

{ #category : #configurations }
Bank >> rateOf: aCurrencyFrom to: aCurrencyTo is: aRate [
	| key |
	key := Array with: aCurrencyFrom with: aCurrencyTo.
	
	config at: key put: aRate.	
]

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [
	^source reduce: self to: toCurrency.

]
