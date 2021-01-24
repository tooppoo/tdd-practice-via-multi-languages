package money

import (
	"test/assert"
	"testing"
)

func TestCurrency(t *testing.T) {
	assert.Equals("USD", NewDollar(5).Currency(), t)
	assert.Equals("CHF", NewFranc(5).Currency(), t)
}
