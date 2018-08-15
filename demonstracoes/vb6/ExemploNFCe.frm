VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmPrincipal 
   ClientHeight    =   8235
   ClientLeft      =   1440
   ClientTop       =   1815
   ClientWidth     =   12390
   LinkTopic       =   "Form1"
   ScaleHeight     =   8235
   ScaleWidth      =   12390
   Begin VB.CheckBox chModoAvancado 
      Caption         =   "Modo Avançado"
      Height          =   255
      Left            =   9960
      TabIndex        =   46
      Top             =   3960
      Width           =   1575
   End
   Begin VB.CommandButton btnXMLporDataset 
      Caption         =   "2.1 - Gerar via Dataset"
      Height          =   375
      Left            =   9240
      TabIndex        =   28
      Top             =   840
      Width           =   3015
   End
   Begin VB.CommandButton btnEnviarDados 
      Caption         =   "3 - Enviar Dados Venda "
      Height          =   375
      Left            =   9240
      TabIndex        =   27
      Top             =   1440
      Width           =   3015
   End
   Begin VB.CommandButton btnCancelarUltimaVenda 
      Caption         =   "Cancelar Última Venda"
      Height          =   375
      Left            =   9240
      TabIndex        =   26
      Top             =   2040
      Width           =   3015
   End
   Begin VB.CommandButton btnConsultarNumeroSessao 
      Caption         =   "Consultar Número Sessão"
      Height          =   375
      Left            =   9240
      TabIndex        =   25
      Top             =   2640
      Width           =   3015
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Manual Online CFe S@T"
      Height          =   375
      Left            =   9240
      TabIndex        =   24
      Top             =   3240
      Width           =   3015
   End
   Begin VB.CommandButton btnConverterTX2XML 
      Caption         =   "2.0 - Gerar via TX2"
      Height          =   375
      Left            =   9240
      TabIndex        =   23
      Top             =   240
      Width           =   3015
   End
   Begin VB.Frame Frame5 
      Height          =   2895
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   8895
      Begin VB.TextBox edtUltIDAutorizado 
         Height          =   285
         Left            =   6360
         TabIndex        =   44
         Top             =   1920
         Width           =   2295
      End
      Begin VB.TextBox edtUltimaSessao 
         Height          =   285
         Left            =   1680
         TabIndex        =   42
         Top             =   1920
         Width           =   2295
      End
      Begin VB.CommandButton btnSalvarConfig 
         Caption         =   "Salvar Configurações"
         Height          =   375
         Left            =   6480
         TabIndex        =   22
         Top             =   2400
         Width           =   2175
      End
      Begin VB.CommandButton btnCarregarConfig 
         Caption         =   "1.1 - Carregar Configurações"
         Height          =   375
         Left            =   2520
         TabIndex        =   21
         Top             =   2400
         Width           =   2175
      End
      Begin VB.CommandButton btnAbrirIni 
         Caption         =   "1.0 - Abrir Arquivo Ini"
         Height          =   375
         Left            =   240
         TabIndex        =   20
         Top             =   2400
         Width           =   2175
      End
      Begin VB.ComboBox cbbCertificado 
         Height          =   315
         Left            =   240
         TabIndex        =   11
         Top             =   480
         Width           =   8415
      End
      Begin VB.TextBox edtCodAtiv 
         Height          =   285
         Left            =   1680
         TabIndex        =   6
         Top             =   1440
         Width           =   2295
      End
      Begin VB.TextBox edtDLLSat 
         Height          =   285
         Left            =   1680
         TabIndex        =   5
         Top             =   960
         Width           =   2295
      End
      Begin VB.TextBox edtCNPJSoftH 
         Height          =   285
         Left            =   6360
         TabIndex        =   4
         Top             =   1440
         Width           =   2295
      End
      Begin VB.TextBox edtCNPJContri 
         Height          =   285
         Left            =   6360
         TabIndex        =   3
         Top             =   960
         Width           =   2295
      End
      Begin VB.Label Label3 
         Caption         =   "Último ID Autorizado:"
         Height          =   255
         Left            =   4800
         TabIndex        =   45
         Top             =   1920
         Width           =   1815
      End
      Begin VB.Label Label2 
         Caption         =   "Última Sessão:"
         Height          =   255
         Left            =   240
         TabIndex        =   43
         Top             =   1920
         Width           =   1815
      End
      Begin VB.Label Label13 
         Caption         =   "Lista de Certificados:"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   240
         Width           =   1815
      End
      Begin VB.Label Label12 
         Caption         =   "Código Ativação:"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Label11 
         Caption         =   "Nome DLL SAT:"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label Label10 
         Caption         =   "CNPJ Software House:"
         Height          =   255
         Left            =   4680
         TabIndex        =   8
         Top             =   1440
         Width           =   1695
      End
      Begin VB.Label Label6 
         Caption         =   "CNPJ Contribuinte:"
         Height          =   255
         Left            =   4920
         TabIndex        =   7
         Top             =   960
         Width           =   1335
      End
   End
   Begin MSComDlg.CommonDialog cmdArquivos 
      Left            =   11640
      Top             =   5160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox mmRetorno 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   5640
      Width           =   12135
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2055
      Left            =   120
      TabIndex        =   0
      Top             =   3240
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   3625
      _Version        =   393216
      Tab             =   2
      TabsPerRow      =   5
      TabHeight       =   476
      TabCaption(0)   =   "Ativação"
      TabPicture(0)   =   "ExemploNFCe.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Command1"
      Tab(0).Control(1)=   "Command2"
      Tab(0).Control(2)=   "Command4"
      Tab(0).Control(3)=   "Command3"
      Tab(0).Control(4)=   "btnAssocAssinatura"
      Tab(0).Control(5)=   "btnConfInterRede"
      Tab(0).Control(6)=   "btnAtivarSat"
      Tab(0).ControlCount=   7
      TabCaption(1)   =   "Configuração"
      TabPicture(1)   =   "ExemploNFCe.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "btnExtrairLogs"
      Tab(1).Control(1)=   "btnBloquearSat"
      Tab(1).Control(2)=   "btnDesbloquearSat"
      Tab(1).Control(3)=   "btnAtualizarSoftware"
      Tab(1).Control(4)=   "btnTrocarCodAtiv"
      Tab(1).ControlCount=   5
      TabCaption(2)   =   "Impressão"
      TabPicture(2)   =   "ExemploNFCe.frx":0038
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "btnVisualizarCancelada"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "btnEditar"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "btnExportarCancelada"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "btnImprimirCancelada"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).Control(4)=   "btnVisualizar"
      Tab(2).Control(4).Enabled=   0   'False
      Tab(2).Control(5)=   "btnExportar"
      Tab(2).Control(5).Enabled=   0   'False
      Tab(2).Control(6)=   "btnImprimir"
      Tab(2).Control(6).Enabled=   0   'False
      Tab(2).ControlCount=   7
      Begin VB.CommandButton btnImprimir 
         Caption         =   "4.0 - Imprimir"
         Height          =   375
         Left            =   240
         TabIndex        =   40
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton btnExportar 
         Caption         =   "4.1 - Exportar"
         Height          =   375
         Left            =   240
         TabIndex        =   39
         Top             =   960
         Width           =   2175
      End
      Begin VB.CommandButton btnVisualizar 
         Caption         =   "4.2 - Visualizar"
         Height          =   375
         Left            =   240
         TabIndex        =   38
         Top             =   1440
         Width           =   2175
      End
      Begin VB.CommandButton btnImprimirCancelada 
         Caption         =   "Imprimir Nota Cancelada"
         Height          =   375
         Left            =   2760
         TabIndex        =   37
         Top             =   960
         Width           =   2175
      End
      Begin VB.CommandButton btnExportarCancelada 
         Caption         =   "Exportar Nota Cancelada"
         Height          =   375
         Left            =   2760
         TabIndex        =   36
         Top             =   1440
         Width           =   2175
      End
      Begin VB.CommandButton btnEditar 
         Caption         =   "4.3 - Editar"
         Height          =   375
         Left            =   2760
         TabIndex        =   35
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton btnVisualizarCancelada 
         Caption         =   "Visualizar Nota Cancelada"
         Height          =   375
         Left            =   5280
         TabIndex        =   34
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton btnExtrairLogs 
         Caption         =   "Extrair Logs"
         Height          =   375
         Left            =   -74760
         TabIndex        =   33
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton btnBloquearSat 
         Caption         =   "Bloquear SAT"
         Height          =   375
         Left            =   -74760
         TabIndex        =   32
         Top             =   960
         Width           =   2175
      End
      Begin VB.CommandButton btnDesbloquearSat 
         Caption         =   "Desbloquear SAT"
         Height          =   375
         Left            =   -74760
         TabIndex        =   31
         Top             =   1440
         Width           =   2175
      End
      Begin VB.CommandButton btnAtualizarSoftware 
         Caption         =   "Atualizar Software SAT"
         Height          =   375
         Left            =   -72240
         TabIndex        =   30
         Top             =   960
         Width           =   2175
      End
      Begin VB.CommandButton btnTrocarCodAtiv 
         Caption         =   "Trocar Cod. Ativação"
         Height          =   375
         Left            =   -72240
         TabIndex        =   29
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Consultar Status Operacional"
         Height          =   375
         Left            =   -69720
         TabIndex        =   19
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Comunicar Certificado ICP"
         Height          =   375
         Left            =   -72240
         TabIndex        =   18
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Consultar SAT"
         Height          =   375
         Left            =   -72240
         TabIndex        =   17
         Top             =   1440
         Width           =   2175
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Teste FimAFim"
         Height          =   375
         Left            =   -72240
         TabIndex        =   16
         Top             =   960
         Width           =   2175
      End
      Begin VB.CommandButton btnAssocAssinatura 
         Caption         =   "Associar Assinatura"
         Height          =   375
         Left            =   -74760
         TabIndex        =   15
         Top             =   1440
         Width           =   2175
      End
      Begin VB.CommandButton btnConfInterRede 
         Caption         =   "Configurar Interface de Rede"
         Height          =   375
         Left            =   -74760
         TabIndex        =   14
         Top             =   960
         Width           =   2175
      End
      Begin VB.CommandButton btnAtivarSat 
         Caption         =   "Ativar SAT"
         Height          =   375
         Left            =   -74760
         TabIndex        =   13
         Top             =   480
         Width           =   2175
      End
   End
   Begin MSComDlg.CommonDialog cmdArquivoCancelado 
      Left            =   11040
      Top             =   5160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "Retorno:"
      Height          =   255
      Left            =   120
      TabIndex        =   41
      Top             =   5400
      Width           =   1215
   End
End
Attribute VB_Name = "frmPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public spdSAT As spdCFeSatX
Public spdSATDataSet As spdCFeSatDataSetX

Public ArqIni As String

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long

Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

Private Function ReadUTF8File(sFile) As String
    Const ForReading = 1
    Dim sPrefix

    With CreateObject("Scripting.FileSystemObject")
        sPrefix = .OpenTextFile(sFile, ForReading, False, False).Read(3)
    End With
    If Left(sPrefix, 3) <> Chr(&HEF) & Chr(&HBB) & Chr(&HBF) Then
        With CreateObject("Scripting.FileSystemObject")
            pvReadFile = .OpenTextFile(sFile, ForReading, False, Left(sPrefix, 2) = Chr(&HFF) & Chr(&HFE)).ReadAll()
            ReadUTF8File = pvReadFile
        End With
    Else
        With CreateObject("ADODB.Stream")
            .Open
            If Left(sPrefix, 2) = Chr(&HFF) & Chr(&HFE) Then
                .Charset = "Unicode"
            ElseIf Left(sPrefix, 3) = Chr(&HEF) & Chr(&HBB) & Chr(&HBF) Then
                .Charset = "UTF-8"
            Else
                .Charset = "_autodetect"
            End If
            .LoadFromFile sFile
            pvReadFile = .ReadText
            ReadUTF8File = pvReadFile
        End With
    End If
End Function

Function get_ini(seção$, chave$) As String
    arquiv$ = ArqIni
    Returns$ = Space$(128)
    x% = GetPrivateProfileString(ByVal seção$, ByVal chave$, _
    "", Returns$, Len(Returns$), ByVal arquiv$)
    get_ini = Left$(Returns$, x%)
End Function

Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    arquiv$ = ArqIni
    iRet = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquiv$)
End Function

Private Sub cmdLoadConfig_Click(Index As Integer)
    CarregaIni
End Sub

Private Sub CarregaIni()

    spdSAT.LoadConfig (ArqIni)
  
    edtCNPJContri.Text = spdSAT.CNPJContribuinte
    edtCNPJSoftH.Text = spdSAT.CNPJSoftwareHouse
    edtCodAtiv.Text = spdSAT.CodigoAtivacao
    edtDLLSat.Text = spdSAT.NomeDllSat
    cbbCertificado.Text = spdSAT.NomeCertificado
  
    spdSAT.DiretorioTemplates = App.Path + "\Templates\"
    spdSAT.DiretorioLog = App.Path + "\Log\"
    spdSAT.DiretorioLogErro = App.Path + "\Log\"
    spdSAT.DiretorioEsquemas = App.Path + "\Esquemas\"
    spdSAT.DiretorioCopiaSeguranca = App.Path + "\CopiaSeguranca\"
    spdSAT.ModeloImpressao = spdSAT.DiretorioTemplates + "Impressao\retrato.rtm"
End Sub

Private Sub btnAbrirIni_Click()
    SaveConfigSATINI
    Shell "C:\Windows\System32\notepad.exe " + App.Path + "\cfesatConfig.ini", vbNormalFocus
End Sub

Private Sub btnAssocAssinatura_Click()
    If spdSAT.NomeCertificado = "" Then
        MsgBox "Utilize Por favor configure o certificado."
    Else
        mmRetorno.Text = spdSAT.AssociarAssinatura(NumeroSessao)
    End If
    
End Sub

Private Sub btnAtivarSat_Click()
    Dim opcao As Integer
    
    opcao = Int(InputBox("", "Trocar Código de ativação', 'Informe a opção do certificado de ativação. (1 - AC SAT SEFAZ, 2 - ICP BRASIL, 3 - RENOVAÇÃO ICP BRASIL)", "2"))
    Select Case opcao
     Case 1: mmRetorno.Text = spdSAT.AtivarSAT(NumeroSessao, caACSATSEFAZ)
     Case 2: mmRetorno.Text = spdSAT.AtivarSAT(NumeroSessao, caICPBRASIL)
     Case 3: mmRetorno.Text = spdSAT.AtivarSAT(NumeroSessao, caRENOVACAOICPBRASIL)
    End Select
     
End Sub

Function NumeroSessao() As Double
    Randomize
    Dim sessao As Double
    sessao = Int(Rnd * (999999 - 100000) + 100000)
    edtUltimaSessao.Text = Trim(Str(sessao))
    
    NumeroSessao = sessao
End Function

Private Sub SaveConfigSATINI()
    Dim Rs As String
  
    Rs = cbbCertificado.Text
    Rs = write_ini("CFESAT", "NomeCertificado", Rs)
End Sub

Private Sub btnAtualizarSoftware_Click()
    mmRetorno.Text = spdSAT.AtualizarSoftwareSAT(NumeroSessao)
End Sub

Private Sub btnBloquearSat_Click()
    mmRetorno.Text = spdSAT.BloquearSAT(NumeroSessao)
End Sub

Private Sub btnCancelarUltimaVenda_Click()
    Dim chave, CNPJSoftwareHouse, CNPJCPFDestinatario, NumeroCaixa, SignAC As String
    
    chave = InputBox("Chave para cancelamento", "Informe a chave do CFe", "")
    CNPJSoftwareHouse = InputBox("CNPJ Software House do cancelamento", "Informe o CNPJ da Software house do CFe", edtCNPJSoftH.Text)
    CNPJCPFDestinatario = InputBox("CNPJ ou CPF do destinatario do cancelamento", "Informe a CNPJ ou CPF do destinatário do CFe", "")
    NumeroCaixa = InputBox("Número do caixa do cancelamento", "Informe o caixa do CFe", "123")
    SignAC = InputBox("Assinatura do aplicativo comercial do cancelamento", "Informe a assinatura do aplicativo comercial do CFe", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    
    mmRetorno.Text = spdSAT.CancelarUltimaVenda(NumeroSessao, chave, CNPJSoftwareHouse, CNPJCPFDestinatario, NumeroCaixa, SignAC)
End Sub

Private Sub btnCarregarConfig_Click()
    CarregaIni
End Sub

Private Sub btnConfInterRede_Click()
    Dim arquivo As String
    arquivo = ReadUTF8File(App.Path + "\exemplos\configrede.xml")
    mmRetorno.Text = spdSAT.ConfigurarInterfaceDeREde(NumeroSessao, arquivo)
End Sub

Private Sub btnConsultarNumeroSessao_Click()
    Dim numeroSessaoConsultar As String
    numeroSessaoConsultar = InputBox("Consultar numero sessao", "Número sessão a ser consultado", "")
    
    mmoRetorno.Text = spdSAT.ConsultarNumeroSessao(NumeroSessao, Int(numeroSessaoConsultar))
End Sub

Private Sub btnConverterTX2XML_Click()
Dim arquivo As String
    cmdArquivos.ShowOpen
    
    If cmdArquivos.FileName <> "" Then
    arquivo = cmdArquivos.FileName
        mmRetorno.Text = spdSAT.ConverterLoteParaXml(arquivo, "ve0007")
    End If
End Sub

Private Sub btnDesbloquearSat_Click()
    mmRetorno.Text = spdSAT.DesbloquearSAT(NumeroSessao)
End Sub

Private Sub btnEditar_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    If cmdArquivos.FileName <> "" Then
        spdSAT.EditarCFeSAT ReadUTF8File(cmdArquivos.FileName), ""
        cmdArquivos.FileName = ""
    End If
End Sub

Private Sub btnEnviarDados_Click()
    Dim aRetorno As String
    Dim arrRetorno() As String
    aRetorno = spdSAT.EnviarDadosVenda(NumeroSessao, mmRetorno.Text)
    arrRetorno = Split(aRetorno, "|")
    If (UBound(arrRetorno) > 7) Then
        edtUltIDAutorizado.Text = arrRetorno(8)
    End If
    
    mmRetorno.Text = aRetorno
End Sub

Private Sub btnExportar_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    If cmdArquivos.FileName <> "" Then
        spdSAT.ExportarCFeSAT ReadUTF8File(cmdArquivos.FileName), "", fePDF, ""
        cmdArquivos.FileName = ""
    End If
End Sub

Private Sub btnExportarCancelada_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    cmdArquivoCancelado.InitDir = App.Path
    cmdArquivoCancelado.DefaultExt = ".xml"
    cmdArquivoCancelado.ShowOpen
    
    If (cmdArquivos.FileName <> "") And (cmdArquivoCancelado.FileName <> "") Then
        spdSAT.ExportarCFeSATCancelada ReadUTF8File(cmdArquivos.FileName), ReadUTF8File(cmdArquivoCancelado.FileName), "", fePDF, ""
        cmdArquivos.FileName = ""
        cmdArquivoCancelado.FileName = ""
    End If
End Sub

Private Sub btnExtrairLogs_Click()
    mmRetorno.Text = spdSAT.ExtrairLogs(NumeroSessao)
End Sub

Private Sub btnImprimir_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    If cmdArquivos.FileName <> "" Then
        spdSAT.ImprimirCFeSAT ReadUTF8File(cmdArquivos.FileName), "", ""
        cmdArquivos.FileName = ""
    End If
End Sub

Private Sub btnImprimirCancelada_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    cmdArquivoCancelado.InitDir = App.Path
    cmdArquivoCancelado.DefaultExt = ".xml"
    cmdArquivoCancelado.ShowOpen
    
    If (cmdArquivos.FileName <> "") And (cmdArquivoCancelado.FileName <> "") Then
        spdSAT.ImprimirCFeSATCancelada ReadUTF8File(cmdArquivos.FileName), ReadUTF8File(cmdArquivoCancelado.FileName), "", ""
        cmdArquivos.FileName = ""
        cmdArquivoCancelado.FileName = ""
    End If
End Sub

Private Sub btnSalvarConfig_Click()
    spdSAT.SaveConfig (ArqIni)
End Sub

Private Sub btnVisualizar_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    If cmdArquivos.FileName <> "" Then
        spdSAT.VisualizarCFeSAT ReadUTF8File(cmdArquivos.FileName), ""
        cmdArquivos.FileName = ""
    End If
End Sub

Private Sub btnVisualizarCancelada_Click()
    cmdArquivos.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivos.DefaultExt = ".xml"
    cmdArquivos.ShowOpen
    
    cmdArquivoCancelado.InitDir = App.Path + "\CopiaSeguranca"
    cmdArquivoCancelado.DefaultExt = ".xml"
    cmdArquivoCancelado.ShowOpen
    
    If (cmdArquivos.FileName <> "") And (cmdArquivoCancelado.FileName <> "") Then
        spdSAT.VisualizarCFeSATCancelada ReadUTF8File(cmdArquivos.FileName), ReadUTF8File(cmdArquivoCancelado.FileName), ""
        cmdArquivos.FileName = ""
        cmdArquivoCancelado.FileName = ""
    End If
End Sub

Private Sub btnXMLporDataset_Click()
    spdSATDataSet.ArquivoConversorXml = spdSAT.DiretorioTemplates + "Conversor\CFeSatDataSets.xml"
    spdSATDataSet.Incluir
    spdSATDataSet.SetCampo ("versaoDadosEnt_A03=0.07")
    spdSATDataSet.SetCampo ("CNPJ_B11=" + edtCNPJSoftH.Text)
    spdSATDataSet.SetCampo ("signAC_B12=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    spdSATDataSet.SetCampo ("numeroCaixa_B14=123")

    spdSATDataSet.SetCampo ("vDescSubTot_W20=")
    spdSATDataSet.SetCampo ("vAcresSubtot_W21=")
    spdSATDataSet.SetCampo ("vCFeLei12741_W22=1.00")

    spdSATDataSet.SetCampo ("infCpl_Z02=")

    spdSATDataSet.SetCampo ("CNPJ_C02=" + edtCNPJContri.Text)
    spdSATDataSet.SetCampo ("IE_C12=111111111111")
    spdSATDataSet.SetCampo ("IM_C13=123123")
    spdSATDataSet.SetCampo ("cRegTribISSQN_C15=")
    spdSATDataSet.SetCampo ("indRatISSQN_C16=N")

    spdSATDataSet.SetCampo ("CNPJ_E02=10575716000170")
    spdSATDataSet.SetCampo ("CPF_E03=")
    spdSATDataSet.SetCampo ("xNome_E04=Fazenda")

    spdSATDataSet.IncluirItem
        spdSATDataSet.SetCampo ("nItem_H02=1")
        spdSATDataSet.SetCampo ("cProd_I02=0001")
        spdSATDataSet.SetCampo ("cEAN_I03=0012345678905")
        spdSATDataSet.SetCampo ("xProd_I04=Trib ICMS Integral Aliquota 10.00% - PIS e COFINS cod 04 - Orig 0")
        spdSATDataSet.SetCampo ("NCM_I05=47061000")
        spdSATDataSet.SetCampo ("CFOP_I06=5001")
        spdSATDataSet.SetCampo ("uCom_I07=kg")
        spdSATDataSet.SetCampo ("qCom_I08=1.0000")
        spdSATDataSet.SetCampo ("vUnCom_I09=100.00")
        spdSATDataSet.SetCampo ("indRegra_I11=A")
        spdSATDataSet.SetCampo ("vDesc_I12=")
        spdSATDataSet.SetCampo ("vOutro_I13=")
        spdSATDataSet.SetCampo ("vItem12741_M02=1.00")

        spdSATDataSet.SetCampo ("Orig_N06=0")
        spdSATDataSet.SetCampo ("CST_N07=00")
        spdSATDataSet.SetCampo ("pICMS_N08=10.00")
        spdSATDataSet.SetCampo ("CSOSN_N10=")

        spdSATDataSet.SetCampo ("CST_Q07=04")
        spdSATDataSet.SetCampo ("vBC_Q08=")
        spdSATDataSet.SetCampo ("pPIS_Q09=")
        spdSATDataSet.SetCampo ("qBCProd_Q11=")
        spdSATDataSet.SetCampo ("vAliqProd_Q12=")

        spdSATDataSet.SetCampo ("CST_S07=04")
        spdSATDataSet.SetCampo ("vBC_S08=")
        spdSATDataSet.SetCampo ("pCOFINS_S09=")
        spdSATDataSet.SetCampo ("qBCProd_S11=")
        spdSATDataSet.SetCampo ("vAliqProd_S12=")

        spdSATDataSet.SetCampo ("vBC_T02=")
        spdSATDataSet.SetCampo ("pCOFINS_T03=")
        spdSATDataSet.SetCampo ("qBCProd_T04=")
        spdSATDataSet.SetCampo ("vAliqProd_T05=")

        spdSATDataSet.SetCampo ("vDeducISSQN_U02=")
        spdSATDataSet.SetCampo ("vAliq_U04=")
        spdSATDataSet.SetCampo ("cMunFG_U06=")
        spdSATDataSet.SetCampo ("cListServ_U07=")
        spdSATDataSet.SetCampo ("cServTribMun_U08=")
        spdSATDataSet.SetCampo ("cNatOp_U09=")
        spdSATDataSet.SetCampo ("indIncFisc_U10=")

        spdSATDataSet.SetCampo ("infAdProd_V01=")
    spdSATDataSet.SalvarItem

    spdSATDataSet.IncluirParte ("PAGAMENTO")
        spdSATDataSet.SetCampo ("cMP_WA03=01")
        spdSATDataSet.SetCampo ("vMP_WA04=110.00")
        spdSATDataSet.SetCampo ("cAdmC_WA05=")
    spdSATDataSet.SalvarParte ("PAGAMENTO")
    
    spdSATDataSet.Salvar
    
    mmRetorno.Text = spdSATDataSet.LoteCFeSat
End Sub

Private Sub chModoAvancado_Click()
    If (chModoAvancado.Value = 1) Then
        SSTab1.TabVisible(0) = True
        SSTab1.TabVisible(1) = True
    Else
        SSTab1.TabVisible(0) = False
        SSTab1.TabVisible(1) = False
    End If
End Sub

Private Sub Command1_Click()
    mmRetorno.Text = spdSAT.ConsultarStatusOperacional(NumeroSessao)
End Sub

Private Sub Command3_Click()
    Dim arquivo As String
    arquivo = ReadUTF8File(App.Path + "\exemplos\dadosvenda.xml")
    
    mmRetorno.Text = spdSAT.TesteFImAFim(NumeroSessao, arquivo)
End Sub

Private Sub Command4_Click()
    mmRetorno.Text = spdSAT.ConsultarSAT(NumeroSessao)
End Sub

Private Sub Command5_Click()

End Sub

Private Sub Command6_Click()
    mmRetorno.Text = spdSAT.AtualizarSoftwareSAT(NumeroSessao)
End Sub

Private Sub Form_Initialize()
    Set spdSAT = New spdCFeSatX
    Set spdSATDataSet = New spdCFeSatDataSetX
     
    Dim i As Integer
    Dim vetor As Variant
  
    frmPrincipal.Caption = "Demo SAT - " + spdSAT.Versao
  
    vetor = Split(spdSAT.ListarCertificados("|"), "|")
    cbbCertificado.Clear
    For i = LBound(vetor) To UBound(vetor)
        cbbCertificado.AddItem vetor(i)
    Next
    
    ArqIni = App.Path + "\cfesatConfig.ini"
    
    SSTab1.TabVisible(0) = False
    SSTab1.TabVisible(1) = False
    CarregaIni
    
End Sub

