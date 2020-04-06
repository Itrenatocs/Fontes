#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function MBRSA2()

    Local cAlias        := "SA2"
    Local aCores        := {}
    Local cFiltra       := "A2_FILIAL == '"+xFilial('SA2')+"' .AND. A2_EST == 'SP'"
    Private cCadastro   := "Cadastro MBROWSE"
    Private cTitulo     := "Legenda"
    Private aRotina     := {}
    Private aIndexSA2   := {}
    Private bFiltraBrw  := { || FilBrowse(cAlias,@aIndexSA2,@cFiltra) }

    AADD( aRotina, {"Pesquisar"     ,"AxPesqui"      ,0,1   }) 
    AADD( aRotina, {"Visualizar"    ,"AxVisual"      ,0,2   })
    AADD( aRotina, {"Incluir"       ,"U_BInclui"     ,0,3   })
    AADD( aRotina, {"Alterar"        ,"U_BAltera"    ,0,4  })
    AADD( aRotina, {"Excluir"       ,"U_BDeleta"     ,0,5   })
    AADD( aRotina, {"Legenda"      ,"U_BLegenda"     ,0,6    })

    //aCores - Legenda 

    
    AADD( aCores, {"A2_TIPO == 'F'  .AND. A2_MSBLQL == '2'",    "BR_AMARELO"    })
    AADD( aCores, {"A2_TIPO == 'J'  .AND. A2_MSBLQL == '2'",    "BR_VERDE"      })
    AADD( aCores, {"A2_TIPO == 'X'  .AND. A2_MSBLQL == '2'",    "BR_LARANJA"    })
    AADD( aCores, {"A2_TIPO == 'R'  .AND. A2_MSBLQL == '2'",    "BR_MARROM"     })
    AADD( aCores, {"A2_MSBLQL == '1'",                          "BR_VERMELHO"   })        
    AADD( aCores, {"Empty(A2_TIPO)",                            "BR_PRETO"      })


    DBSelectArea(cAlias)
    DBSetOrder(1)
    
    Eval(bFiltraBrw)

    DBGoTop()
    mBrowse(6,1,22,75,cAlias,,,,,,aCores)
    
    EndFilBrw(cAlias,aIndexSA2)
    
Return

// Fun��o BInclui - Inclus�o 

User Function BInclui(cAlias,nReg,nOpc)
    Local nOpcao := 0
    nOpcao := AxInclui(cAlias,nReg,nOpc)

        If nOpcao == 1
            MsgInfo("Inclus�o efetuada com sucesso!")
        Else
            MsgAlert("Inclus�o Cancelada!")
        EndIf        
    
Return

// Fun��o BAltera - Altera��o 

User Function BAltera(cAlias,nReg,nOpc)
    Local nOpcao := 0
    nOpcao := AxAltera(cAlias,nReg,nOpc)

        If nOpcao == 1
            MsgInfo("Altera��o efetuada com sucesso!")
        Else
            MsgAlert("Altera��o Cancelada!")
        EndIf        
    
Return Nil


// Fun��o BDeleta - Exclus�o 

User Function BDeleta(cAlias,nReg,nOpc)
    Local nOpcao := 0
    nOpcao := AxDeleta(cAlias,nReg,nOpc)

        If nOpcao == 1
            MsgInfo("Exclus�o Cancelada!")
        Else
            MsgAlert("Exclus�o efetuada com sucesso!")
        EndIf        
    
Return 

// Fun��o BLegenda - Legenda 

User Function BLegenda()
    Local aLegenda := {}

    AADD( aLegenda, {"BR_AMARELO"   ,"Pessoa F�sica"        })
    AADD( aLegenda, {"BR_VERDE"     ,"Pessoa Jur�dica"      })
    AADD( aLegenda, {"BR_LARANJA"   ,"Exporta��o"           })
    AADD( aLegenda, {"BR_MARROM"    ,"Fornecedor Rural"     })
    AADD( aLegenda, {"BR_VERMELHO"  ,"Fornecedor Bloqueado" })
    AADD( aLegenda, {"BR_PRETO"     ,"N�o Classificado"     })


    BrwLegenda(cCadastro, cTitulo, aLegenda)
    
Return