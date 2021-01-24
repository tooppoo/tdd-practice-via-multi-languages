package money

type Expression interface {
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
	return nil
}
func (sum Sum) Reduce(bank Bank, to string) Money {
	amount := sum.Augend.Reduce(bank, to).amount + sum.Addend.Reduce(bank, to).amount

	return newMoney(amount, to)
}
