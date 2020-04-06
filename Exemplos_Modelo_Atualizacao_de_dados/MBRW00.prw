#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function MBRW00()

    Local cAlias := "SB1"
    Private cTitulo := "Cadastro - Produtos MBROWSE"
    Private aRotina := {}

    AADD( aRotina, {"Pesquisar"     ,"AxPesqui"     ,0,1} ) // 1 ao 5 - Rotinas Padrões
    AADD( aRotina, {"Visualizar"    ,"AxVisual"     ,0,2} )
    AADD( aRotina, {"Incluir"       ,"AxInclui"     ,0,3} )
    AADD( aRotina, {"Trocar"        ,"AxAltera"     ,0,4} )
    AADD( aRotina, {"Excluir"       ,"AxDeleta"     ,0,5} )
    AADD( aRotina, {"OlaMundo"      ,"U_OLAMUNDO"   ,0,6} ) // Outras Ações ( Chamado o fonte OLAMUNDO.prw )

DBSelectArea(cAlias)
DBSetOrder(1)
mBrowse(,,,,cAlias) // Caso não queira deixar parametros na função, inserir 04 virgulas vazias (,,,,cAlias)

    
Return Nil




