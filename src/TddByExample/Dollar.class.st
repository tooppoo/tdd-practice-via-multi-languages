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
	| ins |
	ins := Dollar new.
	ins price: aPrice.
	ins currency: 'USD'.
	
	^ins.
]

{ #category : #operators }
Dollar >> * anInteger [
	^ Dollar valueOf: self price * anInteger.
]

{ #category : #accessors }
Dollar >> currency [
	^currency.
]

{ #category : #accessors }
Dollar >> currency: aString [ 
	currency := aString.
]
