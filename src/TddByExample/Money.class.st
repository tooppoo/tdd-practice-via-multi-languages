Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'price'
	],
	#category : #TddByExample
}

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
