#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function DoCase()

    Local cData := "TEM_CORONAVIRUS"

    Do Case 
        Case cData == "TEM_CORONAVIRUS"
        Alert("FIQUE EM CASA !! " + cData)

        Case cData == "ACABO_CORONAVIRUS"
        Alert("VAI TRABALHAR, TA NA HORA N� !!")

        OtherWise
        MsgAlert("PANELA�O NO BOLSONARO!")

    EndCase

Return