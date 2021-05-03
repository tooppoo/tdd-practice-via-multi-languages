Class {
	#name : #Dollar,
	#superclass : #Money,
	#category : #TddByExample
}

{ #category : #constructor }
Dollar class >> valueOf: aPrice [
	^Dollar valueOf: aPrice currency: 'USD'.
]

{ #category : #constructor }
Dollar class >> valueOf: aPrice currency: aCurrency [ 
	| ins |
	ins := Dollar new.
	ins price: aPrice.
	ins currency: aCurrency.
	
	^ins.
]

{ #category : #operators }
Dollar >> * anInteger [
	^Money valueOf: self price * anInteger currency: currency.
]
