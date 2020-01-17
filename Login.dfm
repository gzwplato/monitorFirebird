object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 201
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblBanco: TLabel
    Left = 48
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Banco:'
  end
  object lblPass: TLabel
    Left = 47
    Top = 101
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object lblUser: TLabel
    Left = 47
    Top = 61
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object btnConectar: TButton
    Left = 47
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = btnConectarClick
  end
  object btnCancelar: TButton
    Left = 158
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object edtCaminhoBanco: TEdit
    Left = 96
    Top = 21
    Width = 137
    Height = 21
    TabOrder = 2
    TextHint = 'C:\banco\SGHDADOS.001'
  end
  object edtUser: TEdit
    Left = 96
    Top = 58
    Width = 137
    Height = 21
    TabOrder = 3
    Text = 'SYSDBA'
  end
  object edtPassword: TEdit
    Left = 96
    Top = 98
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
end
