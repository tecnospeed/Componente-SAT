object frmPrincipal: TfrmPrincipal
  Left = 204
  Top = 38
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o Componente SAT'
  ClientHeight = 631
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblRetornoSat: TLabel
    Left = 8
    Top = 355
    Width = 80
    Height = 13
    Caption = 'Retorno do SAT:'
  end
  object lblLog: TLabel
    Left = 8
    Top = 547
    Width = 21
    Height = 13
    Caption = 'Log:'
  end
  object mmoRetornoSat: TMemo
    Left = 8
    Top = 374
    Width = 906
    Height = 163
    Align = alCustom
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object mmoLogs: TMemo
    Left = 8
    Top = 565
    Width = 906
    Height = 59
    Align = alCustom
    TabOrder = 5
  end
  object pnlConfigDemo: TPanel
    Left = 0
    Top = 7
    Width = 681
    Height = 178
    TabOrder = 0
    object lblCnpjContribuinte: TLabel
      Left = 370
      Top = 53
      Width = 91
      Height = 13
      Caption = 'CNPJ Contribuinte:'
    end
    object lblCnpjSoftwareHouse: TLabel
      Left = 352
      Top = 84
      Width = 109
      Height = 13
      Caption = 'CNPJ Software House:'
    end
    object lblCodigoAtivacao: TLabel
      Left = 16
      Top = 84
      Width = 82
      Height = 13
      Caption = 'C'#243'digo Ativa'#231#227'o:'
    end
    object lblNomeDll: TLabel
      Left = 15
      Top = 53
      Width = 73
      Height = 13
      Caption = 'Nome DLL SAT:'
    end
    object lblCertificados: TLabel
      Left = 15
      Top = 5
      Width = 101
      Height = 13
      Caption = 'Lista de Certificados:'
    end
    object Label1: TLabel
      Left = 360
      Top = 115
      Width = 102
      Height = 13
      Caption = #218'ltimo ID Autorizado:'
    end
    object Label2: TLabel
      Left = 16
      Top = 115
      Width = 70
      Height = 13
      Caption = #218'ltima Sess'#227'o:'
    end
    object btnConfigurarDemo: TButton
      Left = 176
      Top = 148
      Width = 153
      Height = 25
      Caption = '1.1 - Carregar Configura'#231#245'es'
      TabOrder = 6
      OnClick = btnConfigurarDemoClick
    end
    object edtCnpjContribuinte: TEdit
      Left = 471
      Top = 51
      Width = 194
      Height = 21
      TabOrder = 2
      Text = '11111111111111'
    end
    object edtCnpjSoftwareHouse: TEdit
      Left = 471
      Top = 82
      Width = 194
      Height = 21
      TabOrder = 4
      Text = '11111111111111'
    end
    object edtCodigoAtivacao: TEdit
      Left = 103
      Top = 81
      Width = 194
      Height = 21
      TabOrder = 3
      Text = '123456789'
    end
    object edtNomeDllSat: TEdit
      Left = 103
      Top = 50
      Width = 194
      Height = 21
      TabOrder = 1
    end
    object cbcertificados: TComboBox
      Left = 15
      Top = 23
      Width = 650
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbcertificadosChange
    end
    object btnSalvarConfiguracoes: TButton
      Left = 512
      Top = 148
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      TabOrder = 5
      OnClick = btnSalvarConfiguracoesClick
    end
    object btnAbrirIni: TButton
      Left = 16
      Top = 148
      Width = 153
      Height = 25
      Caption = '1.0 - Abrir Arquivo INI'
      TabOrder = 7
      OnClick = btnAbrirIniClick
    end
    object edtUltimoID: TEdit
      Left = 471
      Top = 113
      Width = 194
      Height = 21
      TabOrder = 8
    end
    object edtSessao: TEdit
      Left = 103
      Top = 113
      Width = 194
      Height = 21
      TabOrder = 9
    end
  end
  object pnlBotoesDemo: TPanel
    Left = 689
    Top = 8
    Width = 225
    Height = 296
    TabOrder = 2
    object lblFuncoesPrincipais: TLabel
      Left = 72
      Top = 7
      Width = 70
      Height = 16
      Caption = 'Venda SAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancelarVenda: TButton
      Left = 16
      Top = 191
      Width = 193
      Height = 25
      Caption = 'Cancelar '#218'lt. Venda'
      TabOrder = 1
      OnClick = btnCancelarVendaClick
    end
    object btnConsultaNumeroSessao: TButton
      Left = 16
      Top = 151
      Width = 193
      Height = 25
      Caption = 'Consultar N'#250'mero Sess'#227'o'
      TabOrder = 2
      OnClick = btnConsultaNumeroSessaoClick
    end
    object btnEnviarDadosVenda: TButton
      Left = 17
      Top = 109
      Width = 192
      Height = 25
      Caption = '3 - Enviar Dados Venda'
      TabOrder = 0
      OnClick = btnEnviarDadosVendaClick
    end
    object btnConverteTx2ParaXml: TButton
      Left = 16
      Top = 32
      Width = 193
      Height = 25
      Caption = '2.0 - Gerar via TX2       '
      TabOrder = 3
      OnClick = btnConverteTx2ParaXmlClick
    end
    object btnManual: TButton
      Left = 16
      Top = 230
      Width = 193
      Height = 25
      Caption = 'Manual Online CFe S@T'
      TabOrder = 4
      OnClick = btnManualClick
    end
    object btnGerarViaDataSet: TButton
      Left = 17
      Top = 69
      Width = 192
      Height = 25
      Caption = '2.1 - Gerar via Dataset'
      ModalResult = 1
      TabOrder = 5
      OnClick = btnGerarViaDataSetClick
    end
    object CheckBox1: TCheckBox
      Left = 64
      Top = 268
      Width = 97
      Height = 17
      Caption = 'Modo Avan'#231'ado'
      TabOrder = 6
      OnClick = CheckBox1Click
    end
  end
  object btnCopiarClipboard: TButton
    Left = 800
    Top = 512
    Width = 97
    Height = 25
    Caption = 'Copiar conte'#250'do'
    TabOrder = 4
    OnClick = btnCopiarClipboardClick
  end
  object pgcPaginasSAT: TPageControl
    Left = 6
    Top = 195
    Width = 674
    Height = 153
    ActivePage = tsImpressaoAD
    TabOrder = 1
    object tsAtivacao: TTabSheet
      Caption = 'Ativa'#231#227'o'
      TabVisible = False
      object btnAssociarAssinatura: TButton
        Left = 8
        Top = 78
        Width = 193
        Height = 25
        Caption = 'Associar Assinatura'
        TabOrder = 2
        OnClick = btnAssociarAssinaturaClick
      end
      object btnAtivarSat: TButton
        Left = 8
        Top = 16
        Width = 193
        Height = 25
        Caption = 'Ativar SAT'
        TabOrder = 0
        OnClick = btnAtivarSatClick
      end
      object btnComunicarCertificadoICP: TButton
        Left = 212
        Top = 16
        Width = 193
        Height = 25
        Caption = 'Comunicar Certificado ICP Brasil'
        TabOrder = 3
        OnClick = btnComunicarCertificadoICPClick
      end
      object btnConfigurarInterfaceDeRede: TButton
        Left = 8
        Top = 47
        Width = 193
        Height = 25
        Caption = 'Configurar Interface De Rede'
        TabOrder = 1
        OnClick = btnConfigurarInterfaceDeRedeClick
      end
      object btnTesteFimAFim: TButton
        Left = 212
        Top = 47
        Width = 193
        Height = 25
        Caption = 'TesteFimAFim'
        TabOrder = 4
        OnClick = btnTesteFimAFimClick
      end
      object btnConsultarSAT: TButton
        Left = 212
        Top = 79
        Width = 193
        Height = 25
        Caption = 'Consultar SAT'
        TabOrder = 5
        OnClick = btnConsultarSATClick
      end
      object btnConsultarStatusOperacional: TButton
        Left = 419
        Top = 16
        Width = 195
        Height = 25
        Caption = 'Consultar Status Operacional'
        TabOrder = 6
        OnClick = btnConsultarStatusOperacionalClick
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'Configura'#231#227'o'
      ImageIndex = 1
      TabVisible = False
      object btnAtualizarSoftwareSAT: TButton
        Left = 212
        Top = 47
        Width = 193
        Height = 25
        Caption = 'AtualizarSoftwareSAT'
        TabOrder = 4
        OnClick = btnAtualizarSoftwareSATClick
      end
      object btnBloquearSAT: TButton
        Left = 8
        Top = 47
        Width = 193
        Height = 25
        Caption = 'Bloquear SAT'
        TabOrder = 1
        OnClick = btnBloquearSATClick
      end
      object btnDesbloquearSat: TButton
        Left = 8
        Top = 78
        Width = 193
        Height = 25
        Caption = 'Desbloquear SAT'
        TabOrder = 2
        OnClick = btnDesbloquearSatClick
      end
      object btnExtrairLogs: TButton
        Left = 8
        Top = 16
        Width = 193
        Height = 25
        Caption = 'Extrair Logs'
        TabOrder = 0
        OnClick = btnExtrairLogsClick
      end
      object btnTrocarCodigoDeAtivacao: TButton
        Left = 212
        Top = 16
        Width = 193
        Height = 25
        Caption = 'Trocar c'#243'digo de ativa'#231#227'o'
        TabOrder = 3
        OnClick = btnTrocarCodigoDeAtivacaoClick
      end
    end
    object tsImpressaoAD: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 2
      object btnExportarCancelada: TButton
        Left = 427
        Top = 16
        Width = 194
        Height = 25
        Caption = 'Exportar Nota Cancelada'
        TabOrder = 6
        OnClick = btnExportarCanceladaClick
      end
      object btnVizualizarCancelada: TButton
        Left = 218
        Top = 78
        Width = 195
        Height = 25
        Caption = 'Vizualizar Nota Cancelada'
        TabOrder = 5
        OnClick = btnVizualizarCanceladaClick
      end
      object btnImprimirCancelada: TButton
        Left = 218
        Top = 47
        Width = 195
        Height = 25
        Caption = 'Imprimir Nota Cancelada'
        TabOrder = 4
        OnClick = btnImprimirCanceladaClick
      end
      object editarCancelada: TButton
        Left = 427
        Top = 47
        Width = 194
        Height = 25
        Caption = 'Editar Nota Cancelada'
        TabOrder = 7
        OnClick = editarCanceladaClick
      end
      object btnEditar: TButton
        Left = 218
        Top = 16
        Width = 195
        Height = 25
        Caption = '4.3 - Editar'
        TabOrder = 3
        OnClick = btnEditarClick
      end
      object btnExportar: TButton
        Left = 8
        Top = 47
        Width = 195
        Height = 25
        Caption = '4.1 - Exportar'
        TabOrder = 1
        OnClick = btnExportarClick
      end
      object btnImprimirCFe: TButton
        Left = 8
        Top = 16
        Width = 195
        Height = 25
        Caption = '4.0 - Imprimir'
        TabOrder = 0
        OnClick = btnImprimirCFeClick
      end
      object btnVisualizar: TButton
        Left = 8
        Top = 78
        Width = 195
        Height = 25
        Caption = '4.2 - Visualizar'
        TabOrder = 2
        OnClick = btnVisualizarClick
      end
    end
  end
  object dlgOpenArqFimAFim: TOpenDialog
    Left = 816
    Top = 304
  end
  object dlgOpenArqCancelar: TOpenDialog
    Left = 768
    Top = 304
  end
  object dlgOpenConfRede: TOpenDialog
    Left = 744
    Top = 304
  end
  object dlgOpenArqImpressao: TOpenDialog
    Left = 720
    Top = 304
  end
  object dlgOpenCertificadoICPBrasil: TOpenDialog
    Left = 792
    Top = 304
  end
  object dlgOpenArqImpressaoCancelada: TOpenDialog
    Left = 840
    Top = 304
  end
end
