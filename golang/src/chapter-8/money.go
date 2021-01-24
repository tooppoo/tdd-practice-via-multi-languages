package money

type Money interface {
	Times(m int) Money
}

type Dollar struct {
	amount int
}

func (d Dollar) Times(m int) Money {
	return NewDollar(d.amount * m)
}

func NewDollar(amount int) Money {
	return Dollar{amount: amount}
}

type Franc struct {
	amount int
}

func (d Franc) Times(m int) Money {
	return NewFranc(d.amount * m)
}

func NewFranc(amount int) Money {
	return Franc{amount: amount}
}
