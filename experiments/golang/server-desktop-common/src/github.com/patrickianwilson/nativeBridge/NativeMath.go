package nativeBridge

/*
#include "native-headers.h"

 */
import "C"

func NativeAdd(a int, b int) int {
	return int(C.doAdd(C.int(a), C.int(b)));
}
