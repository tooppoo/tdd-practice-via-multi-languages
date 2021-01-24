package chapter_3

type Dollar struct {
	Amount int
}

func (d Dollar) times(m int) Dollar {
	return NewDollar(d.Amount * m)
}

func NewDollar(amount int) Dollar {
	return Dollar{Amount: amount}
}
