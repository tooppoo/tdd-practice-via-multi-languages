package money

type Expression interface {
	Times(multi int) Expression
	Plus(addend Expression) Expression
	Reduce(bank Bank, to string) Money
}

type Sum struct {
	Augend Expression
	Addend Expression
}

func NewSum(augend Expression, addend Expression) Sum {
	return Sum{Augend: augend, Addend: addend}
}
func (sum Sum) Plus(addend Expression) Expression {
	return NewSum(sum, addend)
}
func (sum Sum) Reduce(bank Bank, to string) Money {
	amount := sum.Augend.Reduce(bank, to).amount + sum.Addend.Reduce(bank, to).amount

	return newMoney(amount, to)
}

func (sum Sum) Times(m int) Expression {
	return NewSum(sum.Augend.Times(m), sum.Addend.Times(m))
}
