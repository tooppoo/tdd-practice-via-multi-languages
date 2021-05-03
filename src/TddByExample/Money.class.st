Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'price'
	],
	#category : #TddByExample
}

{ #category : #factory }
Money class >> dollar: anPrice [
	^Dollar valueOf: anPrice.
]

{ #category : #factory }
Money class >> franc: anInteger [
	^Franc valueOf: anInteger.
]

{ #category : #comparing }
Money >> = anOther [
	^(self price) == (anOther price).
]

{ #category : #private }
Money >> price [
	^ price
]

{ #category : #private }
Money >> price: aPrice [
	price := aPrice.
]
