#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function EstruIf()

    LOCAL nNum1 := 22
    LOCAL nNum2 := 100

    if (nNum1 = nNum2)    
        MsgInfo("A Variavel nNum1 � igual a nNum2")

    elseif (nNum1 > nNum2)        
        MsgAlert("A Variavel nNum1 n�o � igual a nNum2")

    elseif (nNum1 != nNum2)        
        Alert("A Variavel nNum1 � diferente de nNum2")

    endif
    

    
Return