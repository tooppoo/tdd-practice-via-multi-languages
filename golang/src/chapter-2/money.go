package chapter_2

type Dollar struct {
	Amount int
}

func (d *Dollar) times(m int) *Dollar {
	return NewDollar(d.Amount * m)
}

func NewDollar(amount int) *Dollar {
	d := new(Dollar)
	d.Amount = amount

	return d
}
