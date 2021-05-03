Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'TddByExample-Tests'
}

{ #category : #tests }
MoneyTest >> testConvertNumberToDollar [
	self assert: (5 USD isKindOf: Dollar).
]
