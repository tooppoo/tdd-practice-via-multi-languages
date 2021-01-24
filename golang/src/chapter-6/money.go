package money

type Dollar struct {
	amount int
}

func (d Dollar) Times(m int) Dollar {
	return NewDollar(d.amount * m)
}

func NewDollar(amount int) Dollar {
	return Dollar{amount: amount}
}

type Franc struct {
	amount int
}

func (d Franc) Times(m int) Franc {
	return NewFranc(d.amount * m)
}

func NewFranc(amount int) Franc {
	return Franc{amount: amount}
}
