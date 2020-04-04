#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function Bloco()

// Passagem por parametros - Bloco de códigos
Local bBloco := {|cMsg| Alert("Olá: "+ cMsg)}

    Eval(bBloco,"Renato!")
    
Return 