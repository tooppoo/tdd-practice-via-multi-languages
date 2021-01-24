package franc

import (
	"chapter-8"
	"test/assert"
	"testing"
)

func TestMultiplication(t *testing.T) {
	five := money.NewFranc(5)

	assert.Equals(money.NewFranc(10), five.Times(2), t)
	assert.Equals(money.NewFranc(15), five.Times(3), t)
}

func TestEquality(t *testing.T) {
	assert.True(money.NewFranc(5) == money.NewFranc(5), t)
	assert.False(money.NewFranc(5) == money.NewFranc(6), t)
}
