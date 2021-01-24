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

func TestPlusReturnSum(t *testing.T) {
	five := NewDollar(5)
	result := five.Plus(five)

	sum := result.(Sum)

	assert.Equals(five, sum.Augend, t)
	assert.Equals(five, sum.Addend, t)
}

func TestReduceSum(t *testing.T) {
	sum := NewSum(NewDollar(3), NewDollar(4))

	bank := NewBank()
	result := bank.Reduce(sum, "USD")

	assert.Equals(NewDollar(7), result, t)
}

func TestReduceMoney(t *testing.T) {
	bank := NewBank()

	result := bank.Reduce(NewDollar(1), "USD")

	assert.Equals(NewDollar(1), result, t)
}

func TestReduceMoneyDifferentCurrency(t *testing.T) {
	bank := NewBank()
	bank.addRate("CHF", "USD", 2)

	result := bank.Reduce(NewFranc(2), "USD")

	assert.Equals(NewDollar(1), result, t)
}

func TestIdentityRate(t *testing.T) {
	assert.Equals(1, NewBank().Rate("USD", "USD"), t)
}

func TestMixedAddition(t *testing.T) {
	var fiveBucks Expression = NewDollar(5)
	var tenFrancs Expression = NewFranc(10)

	bank := NewBank()
	bank.addRate("CHF", "USD", 2)

	result := bank.Reduce(fiveBucks.Plus(tenFrancs), "USD")

	assert.Equals(NewDollar(10), result, t)
}

func TestSum(t *testing.T) {
	var fiveBucks Expression = NewDollar(5)
	var tenFrancs Expression = NewFranc(10)

	cases := []struct {
		group    string
		sum      Expression
		expected Money
	}{
		{
			"Plus",
			NewSum(fiveBucks, tenFrancs).Plus(fiveBucks),
			NewDollar(15)},
		{
			"Times",
			NewSum(fiveBucks, tenFrancs).Times(2),
			NewDollar(20),
		},
	}

	for _, testCase := range cases {
		t.Run(testCase.group, func(t *testing.T) {
			bank := NewBank()
			bank.addRate("CHF", "USD", 2)

			assert.Equals(testCase.expected, bank.Reduce(testCase.sum, "USD"), t)
		})
	}
}
