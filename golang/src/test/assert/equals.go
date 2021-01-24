package assert

import "testing"

func Equals(expected interface{}, actual interface{}, t *testing.T) {
	if expected != actual {
		t.Errorf("expected = %v, actual = %v", expected, actual)
	}
}
