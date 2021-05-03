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
	(from = 'CHF' and: to = 'USD')
		ifTrue: [ ^2 ]
		ifFalse: [ ^1 ].
]

{ #category : #configurations }
Bank >> rateOf: aCurrency1 to: aString2 is: anInteger [ 
	
	
]

{ #category : #conversions }
Bank >> reduce: source to: toCurrency [
	^source reduce: self to: toCurrency.

]
