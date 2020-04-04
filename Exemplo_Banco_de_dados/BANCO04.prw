#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function BANCO04()

    Local aArea := SB1->(GetArea())

    DBSelectArea("SB1")
    SB1->(DBSetOrder(1))
   SB1->(DBGoTo(1))   

    //Iniciar a Transa��o
    Begin Transaction 

    MsgInfo("A Descri��o do Produto ser� alterada!", "Aten��o!")

    If SB1->(DBSeek(FWXFilial("SB1") + "00001"))
        RecLock("SB1", .F.) //RecLock("SB1", .F.) - Trava registro para alterar (.T.) - para inclus�o
        Replace B1_DESC With "PENDRIVE 4GB SANDISK"

    SB1->(MSUnlock()) // SB1->(MSUnlock())  --> Destrava o registro da tabela
        
    EndIf
        MsgAlert("Altera��o Efetuada!", "Aten��o!")

        // DisarmTransaction() - Cancela toda a altera��o efetuada.
    End Transaction    

    RestArea(aArea)

Return


