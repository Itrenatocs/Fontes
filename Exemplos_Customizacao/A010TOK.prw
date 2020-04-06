#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function A010TOK()

    Local lExecuta := .T.
    Local cTipo := AllTrim(M->B1_TIPO) 
    Local cConta := AllTrim(M->B1_CONTA)

    If (cTipo = "PA" .AND. cConta = "001")

        Alert("A conta <b> "+ cConta + "</b> n�o pode estar "+;
        "associada a um produto do tipo <b> " + cTipo)

        lExecuta := .F.
    
    EndIf
    

Return(lExecuta)


//AllTrim() --> Remove os espa�os em branco do in�cio e do fim de uma cadeia de caracteres.
//M -> Significa M�moria, ele vai pegar o dado preenchido na referencia B1_TIPO
//Return(lExecuta) --> Ira iniciar com true, para que impeca o cadastro do produto, precisamos retornar o lExecuta.


