Class {
	#name : #Dollar,
	#superclass : #Money,
	#category : #TddByExample
}

{ #category : #constructor }
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

{ #category : #accessors }
Dollar >> currency [
	^'USD'.
]
