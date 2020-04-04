#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User  Function For()

    Local nCount
    Local nNum := 0

For nCount := 0  To 10 Step 5

    nNum += nCount

Next
Alert("Valor: "+ cValToChar(nNum))

Return


