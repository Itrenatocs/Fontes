#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function BANCO04()

    Local aArea := SB1->(GetArea())

    DBSelectArea("SB1")
    SB1->(DBSetOrder(1))
   SB1->(DBGoTo(1))   

    //Iniciar a Transação
    Begin Transaction 

    MsgInfo("A Descrição do Produto será alterada!", "Atenção!")

    If SB1->(DBSeek(FWXFilial("SB1") + "00001"))
        RecLock("SB1", .F.) //RecLock("SB1", .F.) - Trava registro para alterar (.T.) - para inclusão
        Replace B1_DESC With "PENDRIVE 4GB SANDISK"

    SB1->(MSUnlock()) // SB1->(MSUnlock())  --> Destrava o registro da tabela
        
    EndIf
        MsgAlert("Alteração Efetuada!", "Atenção!")

        // DisarmTransaction() - Cancela toda a alteração efetuada.
    End Transaction    

    RestArea(aArea)

Return


