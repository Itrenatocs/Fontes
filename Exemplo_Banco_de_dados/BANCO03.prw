#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'
#INCLUDE 'TopConn.ch'

User Function BANCO03()

    Local aArea := (GetArea())
    Local cQuery := ""
    Local aDados := {}

    CQUERY := "SELECT B1_COD AS CODIGO, B1_DESC AS DESCRICAO FROM "+ RETSQLNAME("SB1")+ " SB1 WHERE B1_MSBLQL != '1'"
    // RETSQLNAME --> Retorna o nome físico da tabela, baseado em um alias, para ser usado em na contrução do “SELECT ... FROM TABELA” da query.


    // EXECUTAR AS QUERYS TSQUERY = DO TOPCONNECT - Acima - Consulta
    //EoF Final de Arquivo 
        TCQuery cQuery New Alias "TMP"

        While ! TMP ->(Eof())

            AADD(aDados, TMP->CODIGO)
            AADD(aDados, TMP->DESCRICAO)
            TMP->(DBSkip())           
        EndDo
        
        Alert(Len(aDados))

        For nCount := 1 to Len(aDados)

            MsgInfo(aDados[nCount])

        Next nCount

    TMP->(DBCloseArea())
    RestArea(aArea)

Return



