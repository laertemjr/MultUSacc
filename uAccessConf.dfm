object frmAccessConf: TfrmAccessConf
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o do Banco de Dados MS-Access'
  ClientHeight = 111
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 225
    Height = 15
    Caption = 'Caminho do Banco de Dados MS-Access :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtPath: TEdit
    Left = 8
    Top = 40
    Width = 608
    Height = 23
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object btnProcurar: TButton
    Left = 8
    Top = 69
    Width = 75
    Height = 25
    Caption = '&Procurar'
    TabOrder = 0
    OnClick = btnProcurarClick
  end
  object OpenDialog1: TOpenDialog
    Left = 576
    Top = 8
  end
end
