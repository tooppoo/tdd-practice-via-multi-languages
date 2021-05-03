Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #TddByExample
}

{ #category : #conversions }
Bank >> reduce: aMoney currency: aString [ 
	^Money dollar: 10.
]
