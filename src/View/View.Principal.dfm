object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Estrutura MVC'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 64
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Boletos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 145
    Top = 96
    Width = 75
    Height = 25
    Caption = 'NFe'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 226
    Top = 96
    Width = 75
    Height = 25
    Caption = 'MercadoPago'
    TabOrder = 2
    OnClick = Button3Click
  end
end
