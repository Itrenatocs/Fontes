#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function While()

Local nNum1 := 1
Local cNome := "RCTI"


//While Composto
//Estrutura de repeticao carregando uma estrutura de decisão
While nNum1 != 10 .AND. cNome != "Protheus"
    nNum1++
        If nNum1 == 5
        cNome := "Protheus"
        EndIf

EndDo
    Alert("Numero: "+ cValToChar(nNum1))
    Alert("Nome: "+ cValToChar(cNome))

    
Return 