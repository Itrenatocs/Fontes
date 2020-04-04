#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function BANCO02()
    Local aArea := SB1->(GetArea())
    Local cMsg := ""

    DBSelectArea("SB1")
    //SB1->DBSetNickName( character, character ) - NickName
    SB1->(DBSetOrder(1))
    SB1->(DBGoTop(3))

    // Retorna um unico campo escolhido.
    cMsg := Posicione("SB1",;
                      1,;
                      FWXFilial("SB1")+  "00001",;
                      "B1_DESC") 
    Alert("Descrição Produto: " + cMsg, "AVISO" )

    RestArea(aArea)

Return 
