#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Array()

//Arrays: S�o Cole��es de valores, semelhantes a uma lista
//Cada item de um array � referenciado pela indica��o de sua posi��o numerica. Que come�a por 1.

        Local dData := Date()
        Local aValores := { "Renato", dData, 100 }

        Alert(aValores[2]) //Exibe a posi��o 2 do Array ( Date() ) 
        Alert(aValores[3])

Return