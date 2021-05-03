Class {
	#name : #Dollar,
	#superclass : #Money,
	#instVars : [
		'currency'
	],
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
	^self class valueOf: self price * anInteger currency: currency.
]

{ #category : #accessors }
Dollar >> currency [
	^currency.
]

{ #category : #accessors }
Dollar >> currency: aString [ 
	currency := aString.
]
