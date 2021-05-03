Class {
	#name : #Dollar,
	#superclass : #Object,
	#instVars : [
		'price'
	],
	#category : #TddByExample
}

{ #category : #'as yet unclassified' }
Dollar class >> valueOf: aPrice [
	| ins |
	ins := Dollar new.
	ins price: aPrice.
	
	^ins.
]

{ #category : #operators }
Dollar >> * anInteger [
	self price: (self price * anInteger).
]

{ #category : #comparing }
Dollar >> = anOther [
	^(self price) == (anOther price).
]

{ #category : #private }
Dollar >> price [
	^ price
]

{ #category : #private }
Dollar >> price: aPrice [
	price := aPrice.
]
