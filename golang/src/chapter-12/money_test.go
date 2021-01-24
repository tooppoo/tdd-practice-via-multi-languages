package money

import (
	"test/assert"
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := NewDollar(5)

	assert.Equals(NewDollar(10), five.Times(2), t)
	assert.Equals(NewDollar(15), five.Times(3), t)
}

func TestEquality(t *testing.T) {
	assert.True(NewDollar(5) == NewDollar(5), t)
	assert.False(NewDollar(5) == NewDollar(6), t)
}

func TestCurrency(t *testing.T) {
	assert.Equals("USD", NewDollar(5).Currency(), t)
	assert.Equals("CHF", NewFranc(5).Currency(), t)
}

func TestPlus(t *testing.T) {
	five := NewDollar(5)

	sum := five.Plus(five)
	bank := NewBank()
	reduced := bank.Reduce(sum, "USD")

	assert.Equals(NewDollar(10), reduced, t)
}
