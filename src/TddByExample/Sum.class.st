Class {
	#name : #Sum,
	#superclass : #Object,
	#instVars : [
		'augend',
		'addend'
	],
	#category : #TddByExample
}

{ #category : #constructor }
Sum class >> augend: augendMoney addend: addendMoney [
	| ins |
	ins := Sum new.
	
	ins augend: augendMoney;
		addend: addendMoney.

	^ins.
]

{ #category : #operators }
Sum >> * aMultiplier [
	^Sum augend: augend * aMultiplier addend: addend * aMultiplier.
]

{ #category : #operators }
Sum >> + aMoney [ 
	^Sum augend: self addend: aMoney.
]

{ #category : #accessors }
Sum >> addend [
	^ addend
]

{ #category : #accessors }
Sum >> addend: aMoney [ 
	addend := aMoney.
]

{ #category : #accessors }
Sum >> augend [
	^ augend
]

{ #category : #accessors }
Sum >> augend: aMoney [ 
	augend := aMoney.
]

{ #category : #converting }
Sum >> reduce: aBank to: currency [
	| amount |
	amount := (augend reduce: aBank to: currency) price +
		(addend reduce: aBank to: currency) price.
	
	^Money valueOf: amount currency: currency.
]
