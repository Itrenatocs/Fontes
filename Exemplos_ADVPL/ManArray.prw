#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Vetor()

Local aVetor := {10,20,30}

// AADD( aVetor, 40 ) // Adiciona mais um Indice
// Alert(Len(aVetor)) // Retorno a quantidade de Indices

// AINS( aVetor, 2 )
// aVetor[2] := 200
// Alert(aVetor[2])
// Alert(Len(aVetor))


// aVetor2 := AClone(aVetor)
//     for nCount := 1 To Len(aVetor2)
//         Alert(aVetor2[nCount])

//      Next nCount  

// ADel(aVetor, 2)
// Alert(aVetor[3])
// Alert(Len(aVetor))


ASize(aVetor, 2)
Alert(Len(aVetor))
for nCount := 1 To Len(aVetor)
        Alert(aVetor[nCount])

     Next nCount  

Return



