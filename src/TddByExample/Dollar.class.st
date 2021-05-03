Class {
	#name : #Dollar,
	#superclass : #Money,
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
	^ Dollar valueOf: self price * anInteger.
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
