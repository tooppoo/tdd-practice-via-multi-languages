package money

type Expression interface {
	Reduce(bank Bank, to string) Money
}

type Sum struct {
	Augend Money
	Addend Money
}

func NewSum(augend Money, addend Money) Sum {
	return Sum{Augend: augend, Addend: addend}
}
func (sum Sum) Reduce(bank Bank, to string) Money {
	amount := sum.Augend.amount + sum.Addend.amount

	return newMoney(amount, to)
}
