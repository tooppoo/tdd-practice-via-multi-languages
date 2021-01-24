package dollar

import (
	"chapter-9"
	"test/assert"
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := money.NewDollar(5)

	assert.Equals(money.NewDollar(10), five.Times(2), t)
	assert.Equals(money.NewDollar(15), five.Times(3), t)
}

func TestEquality(t *testing.T) {
	assert.True(money.NewDollar(5) == money.NewDollar(5), t)
	assert.False(money.NewDollar(5) == money.NewDollar(6), t)
}
