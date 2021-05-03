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
	(from = to)
		ifTrue: [ ^1 ]
		ifFalse: [
			^config at: (Array with: from with: to).
		].

]

{ #category : #configurations }
Bank >> rateOf: from to: to is: aRate [
	config
		at: (Array with: from with: to)
		put: aRate.	
]

{ #category : #converting }
Bank >> reduce: source to: toCurrency [
	^source reduce: self to: toCurrency.

]
