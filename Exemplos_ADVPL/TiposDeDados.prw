#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/* 
    TIPOS NUMERICOS: 3 / 21.000 / 0.4 / 200000 
    LOGICOS: .T. / .F. ( VERDADEIRO OU FALSO )
    CARACTERE: "D" / 'C' <- ASPAS SIMPLES
    DATA: DATE()
    ARRAY: {"VALOR1", "VALOR2", "VALOR3"}
    BLOCO DE CÓDIGO: { ||VALOR := 1, MSGALERT("VALOR É IGUAL A "+cValorToChar (VALOR) )}

    cValToChar(xParametro) => Imprimir qualquer valor em String no ADVPL

*/

User Function Varia()
Local nNum := 66
Local lLogico := .T.
Local cCarac := "String"
Local dData := Date()
Local aArray := {"João", "Maria", "Jose"}
Local bBloco := {|| nValor := 2, MsgAlert("O numero é: "+ cValToChar(nValor))}

Alert(nNum)
Alert(lLogico)
Alert(cValToChar(cCarac))
Alert(dData)
Alert(aArray[1])

// Executar bloco de codigo (Eval)
Eval(bBloco)

RETURN