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

{ #category : #conversions }
Sum >> reduce: aBank to: currency [
	| amount |
	amount := augend price + addend price.
	
	^Money valueOf: amount currency: currency.
]
