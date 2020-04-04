#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Array()

//Arrays: São Coleções de valores, semelhantes a uma lista
//Cada item de um array é referenciado pela indicação de sua posição numerica. Que começa por 1.

        Local dData := Date()
        Local aValores := { "Renato", dData, 100 }

        Alert(aValores[2]) //Exibe a posição 2 do Array ( Date() ) 
        Alert(aValores[3])

Return