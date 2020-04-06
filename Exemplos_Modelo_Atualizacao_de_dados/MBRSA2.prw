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

// Função BInclui - Inclusão 

User Function BInclui(cAlias,nReg,nOpc)
    Local nOpcao := 0
    nOpcao := AxInclui(cAlias,nReg,nOpc)

        If nOpcao == 1
            MsgInfo("Inclusão efetuada com sucesso!")
        Else
            MsgAlert("Inclusão Cancelada!")
        EndIf        
    
Return

// Função BAltera - Alteração 

User Function BAltera(cAlias,nReg,nOpc)
    Local nOpcao := 0
    nOpcao := AxAltera(cAlias,nReg,nOpc)

        If nOpcao == 1
            MsgInfo("Alteração efetuada com sucesso!")
        Else
            MsgAlert("Alteração Cancelada!")
        EndIf        
    
Return Nil


// Função BDeleta - Exclusão 

User Function BDeleta(cAlias,nReg,nOpc)
    Local nOpcao := 0
    nOpcao := AxDeleta(cAlias,nReg,nOpc)

        If nOpcao == 1
            MsgInfo("Exclusão Cancelada!")
        Else
            MsgAlert("Exclusão efetuada com sucesso!")
        EndIf        
    
Return 

// Função BLegenda - Legenda 

User Function BLegenda()
    Local aLegenda := {}

    AADD( aLegenda, {"BR_AMARELO"   ,"Pessoa Física"        })
    AADD( aLegenda, {"BR_VERDE"     ,"Pessoa Jurídica"      })
    AADD( aLegenda, {"BR_LARANJA"   ,"Exportação"           })
    AADD( aLegenda, {"BR_MARROM"    ,"Fornecedor Rural"     })
    AADD( aLegenda, {"BR_VERMELHO"  ,"Fornecedor Bloqueado" })
    AADD( aLegenda, {"BR_PRETO"     ,"Não Classificado"     })


    BrwLegenda(cCadastro, cTitulo, aLegenda)
    
Return