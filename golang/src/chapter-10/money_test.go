package money

import (
	"test/assert"
	"testing"
)

func TestCurrency(t *testing.T) {
	assert.Equals("USD", NewDollar(5).Currency(), t)
	assert.Equals("CHF", NewFranc(5).Currency(), t)
}

func TestMoneyEquality(t *testing.T) {
	m := NewMoney(5, "CHF")
	f := Franc{
		moneyStructure{
			amount:   5,
			currency: "CHF",
		},
	}
	assert.Equals(m, f.moneyStructure, t)
}
