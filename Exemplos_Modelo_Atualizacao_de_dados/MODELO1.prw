#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function MODELO1()
    Local cAlias := "SB1"
    Local cTitulo := "Cadastro - AXCadastro"
    Local cVldExc := ".T."
    Local cVldAlt := ".T."

    AxCadastro(cAlias, cTitulo, cVldExc, cVldAlt)

Return NIL


