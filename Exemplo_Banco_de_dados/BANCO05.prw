#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function BANCO05()

    Local aArea := GetArea()
    Local aDados := {}
    Private lMSErrorAuto := .T.

    aDados := {;
                {"B1_COD", "00006",                         Nil},;
                {"B1_DESC", "MONITOR DELL 21 POLEGADAS",    Nil},;
                {"B1_TIPO", "GG",                           Nil},;
                {"B1_UM", "PC",                             Nil},;
                {"B1_LOCPAD", "01",                         Nil},;
                {"B1_PICM", 0,                              Nil},;
                {"B1_IPI", 0,                               Nil},;
                {"B1_CONTRAT", "N",                         Nil},;
                {"B1_LOCALIZ", "N",                         Nil};
              }
    Begin Transaction

        MSExecAuto({|x,y| Mata010(x,y)}, aDados, 3) 

        If lMSErrorAuto
            Alert("Ocorretam erros durante a operação")
            MostraErro() 

            DisarmTransaction()
        Else 
            MsgInfo("Operação Finalizada!","Aviso") 

        EndIf

    End Transaction

    RestArea(aArea)

Return






