#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function BANCO01()

    Local aArea := SB1->(GetArea())
    //Local cMsg := ""

    DBSelectArea("SB1") // Conecta a area da tabela SB1
    SB1->(DBSetOrder(1)) // Posciona no Indice // Começa com a Filial
    SB1->(DBGoTo(1))  // Posiciona no registro

    //Posiciona o Produto de código 00001 
    If SB1->(DBSeek(FWXFilial("SB1")+ "00001"))
        Alert(SB1->B1_DESC)

    EndIf
    
    RestArea(aArea) // Fechando a tabela
    
Return 

