Class {
	#name : #Franc,
	#superclass : #Money,
	#category : #TddByExample
}

{ #category : #constructor }
Franc class >> valueOf: anPrice [
	^Franc valueOf: anPrice currency: 'CHF'.
]

{ #category : #constructor }
Franc class >> valueOf: aPrice currency: aCurrency [ 
	| ins |
	ins := Franc new.
	ins price: aPrice.
	ins currency: aCurrency.
	
	^ins.
]

{ #category : #operators }
Franc >> * anInteger [ 
	^Money valueOf: price * anInteger currency: self currency.
]
