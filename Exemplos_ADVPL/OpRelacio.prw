#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function OpRelacio()
LOCAL nNum1 := 10
LOCAL nNum2 := 20

Alert(nNUm1 < nNum2)
Alert(nNum1 > nNum2)
Alert(nNum1 = nNum2)
Alert(nNum1 == nNum2)
Alert(nNum1 <= nNum2)
Alert(nNum1 >= nNum2)
Alert(nNum1 != nNum2)

nNum1 := 10
nNum1 += nNum2
nNum2 -= nNum1
nNum1 *= nNum2
nNum2 /= nNum1
nNum2 %= nNum1


RETURN