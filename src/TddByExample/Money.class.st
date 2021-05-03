Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'price',
		'currency'
	],
	#category : #TddByExample
}

{ #category : #factory }
Money class >> dollar: aPrice [
	^self valueOf: aPrice currency: 'USD'.
]

{ #category : #factory }
Money class >> franc: aPrice [
	^self valueOf: aPrice currency: 'CHF'.
]

{ #category : #constructor }
Money class >> valueOf: aPrice currency: aCurrency [ 
	| ins |
	ins := self new.
	ins price: aPrice.
	ins currency: aCurrency.
	
	^ins.
]

{ #category : #operators }
Money >> * anInteger [
	^Money valueOf: self price * anInteger currency: currency.
]

{ #category : #operators }
Money >> + aMoney [ 
	^Sum augend: self addend: aMoney.
]

{ #category : #comparing }
Money >> = anOther [
	^price = anOther price and: currency = anOther currency.
]

{ #category : #accessors }
Money >> currency [
	^currency.
]

{ #category : #accessors }
Money >> currency: aString [ 
	currency := aString.
]

{ #category : #private }
Money >> price [
	^ price
]

{ #category : #private }
Money >> price: aPrice [
	price := aPrice.
]

{ #category : #conversions }
Money >> reduce: to [ 
	| rate |
	rate := ((currency = 'CHF') and: (to = 'USD'))
		ifTrue: [ 2 ]
		ifFalse: [ 1 ].
		
	^Money valueOf: price / rate currency: to.
]
