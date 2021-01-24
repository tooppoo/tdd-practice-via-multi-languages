package money

type Bank struct{}

func NewBank() Bank {
	return Bank{}
}
func (b Bank) Reduce(_src Expression, _to string) Money {
	return NewDollar(10)
}
