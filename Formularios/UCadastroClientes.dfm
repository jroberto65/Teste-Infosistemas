object fCadastroClientes: TfCadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 403
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 674
    Height = 362
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 13
        Top = 24
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 14
        Top = 52
        Width = 25
        Height = 13
        Caption = 'None'
      end
      object Label3: TLabel
        Left = 13
        Top = 200
        Width = 55
        Height = 13
        Caption = 'Logradouro'
      end
      object Label4: TLabel
        Left = 474
        Top = 200
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label6: TLabel
        Left = 344
        Top = 230
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label9: TLabel
        Left = 258
        Top = 82
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label8: TLabel
        Left = 13
        Top = 263
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label5: TLabel
        Left = 13
        Top = 230
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label7: TLabel
        Left = 13
        Top = 172
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label12: TLabel
        Left = 14
        Top = 115
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label13: TLabel
        Left = 14
        Top = 82
        Width = 17
        Height = 13
        Caption = 'Cpf'
      end
      object Label14: TLabel
        Left = 138
        Top = 263
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Label15: TLabel
        Left = 469
        Top = 82
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object Label16: TLabel
        Left = 321
        Top = 263
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label10: TLabel
        Left = 3
        Top = 295
        Width = 107
        Height = 13
        Caption = '* Campos obrigat'#243'rios'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 435
        Top = 54
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 187
        Top = 83
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 153
        Top = 173
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label19: TLabel
        Left = 120
        Top = 264
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label21: TLabel
        Left = 635
        Top = 82
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label22: TLabel
        Left = 635
        Top = 115
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 459
        Top = 52
        Width = 52
        Height = 13
        Caption = 'Identidade'
      end
      object Label24: TLabel
        Left = 635
        Top = 52
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 14
        Top = 144
        Width = 51
        Height = 13
        Caption = 'Cc (E-mail)'
      end
      object Label26: TLabel
        Left = 3
        Top = 311
        Width = 177
        Height = 13
        Caption = '** Separar e-mail (c'#243'pia) com v'#237'rgula'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label27: TLabel
        Left = 635
        Top = 145
        Width = 12
        Height = 13
        Caption = '**'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object edtnome: TEdit
        Tag = 1
        Left = 73
        Top = 49
        Width = 359
        Height = 21
        MaxLength = 120
        TabOrder = 1
        OnExit = edtnomeExit
      end
      object edtendereco: TEdit
        Tag = 9
        Left = 72
        Top = 197
        Width = 360
        Height = 21
        TabOrder = 9
      end
      object edtnumero: TEdit
        Tag = 10
        Left = 517
        Top = 197
        Width = 113
        Height = 21
        Alignment = taRightJustify
        MaxLength = 6
        TabOrder = 10
        OnExit = edtnumeroExit
      end
      object edtcidade: TEdit
        Tag = 12
        Left = 391
        Top = 227
        Width = 239
        Height = 21
        TabOrder = 12
      end
      object edtCep: TEdit
        Tag = 8
        Left = 72
        Top = 169
        Width = 75
        Height = 21
        Alignment = taRightJustify
        MaxLength = 8
        TabOrder = 8
        OnExit = edtCepExit
      end
      object edtbairro: TEdit
        Tag = 11
        Left = 72
        Top = 227
        Width = 239
        Height = 21
        TabOrder = 11
      end
      object edtcodigo: TEdit
        Left = 72
        Top = 21
        Width = 97
        Height = 21
        Alignment = taRightJustify
        MaxLength = 8
        TabOrder = 0
        Text = '0'
        OnExit = edtcodigoExit
      end
      object edtEmail: TEdit
        Tag = 6
        Left = 72
        Top = 112
        Width = 558
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 6
        OnExit = edtEmailExit
      end
      object edtPais: TEdit
        Tag = 14
        Left = 165
        Top = 260
        Width = 121
        Height = 21
        Alignment = taRightJustify
        MaxLength = 6
        TabOrder = 14
      end
      object edtComplemento: TEdit
        Tag = 15
        Left = 391
        Top = 260
        Width = 239
        Height = 21
        TabOrder = 15
      end
      object cbbUf: TComboBox
        Tag = 13
        Left = 72
        Top = 260
        Width = 43
        Height = 21
        ItemIndex = 0
        TabOrder = 13
        Text = 'AC'
        OnExit = cbbUfExit
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
      end
      object btnEnviaEmail: TButton
        Left = 321
        Top = 308
        Width = 75
        Height = 25
        Caption = 'Enviar email'
        TabOrder = 16
        OnClick = btnEnviaEmailClick
      end
      object edtIdentidade: TEdit
        Tag = 2
        Left = 517
        Top = 49
        Width = 113
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
        OnExit = edtIdentidadeExit
      end
      object edtComCopia: TEdit
        Tag = 7
        Left = 72
        Top = 141
        Width = 558
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 7
        OnExit = edtComCopiaExit
      end
      object edtCpf: TMaskEdit
        Tag = 3
        Left = 72
        Top = 79
        Width = 103
        Height = 21
        EditMask = '999.999.999-99;1;_'
        MaxLength = 14
        TabOrder = 3
        Text = '   .   .   -  '
        OnExit = edtCpfExit
      end
      object edtTelefone: TMaskEdit
        Tag = 4
        Left = 319
        Top = 79
        Width = 113
        Height = 21
        EditMask = '!\(99\)0000-0000;0;_'
        MaxLength = 13
        TabOrder = 4
        Text = ''
      end
      object edtCelular: TMaskEdit
        Tag = 5
        Left = 517
        Top = 80
        Width = 113
        Height = 21
        EditMask = '!\(99\)00000-0000;0;_'
        MaxLength = 14
        TabOrder = 5
        Text = ''
        OnExit = edtCelularExit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 362
    Width = 674
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnNovo: TButton
      Left = 211
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      ImageIndex = 2
      Images = Principal.ImageIcons16
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btncancelar: TButton
      Left = 299
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ImageIndex = 3
      Images = Principal.ImageIcons16
      TabOrder = 1
      OnClick = btncancelarClick
    end
    object btnFechar: TButton
      Left = 388
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      ImageIndex = 1
      Images = Principal.ImageIcons16
      TabOrder = 2
      OnClick = btnFecharClick
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 620
    Top = 312
  end
end
