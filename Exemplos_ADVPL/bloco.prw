#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


User Function Bloco()

// Passagem por parametros - Bloco de c�digos
Local bBloco := {|cMsg| Alert("Ol�: "+ cMsg)}

    Eval(bBloco,"Renato!")
    
Return 