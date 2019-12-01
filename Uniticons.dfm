object Formresize: TFormresize
  Left = 0
  Top = 0
  Caption = 'Create Icons'
  ClientHeight = 507
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 64
    Top = 136
    Width = 425
    Height = 337
    Stretch = True
  end
  object Image2: TImage
    Left = 495
    Top = 32
    Width = 2732
    Height = 2732
    Stretch = True
    Transparent = True
    Visible = False
  end
  object Label1: TLabel
    Left = 64
    Top = 82
    Width = 12
    Height = 13
    Caption = '---'
  end
  object Label2: TLabel
    Left = 64
    Top = 101
    Width = 12
    Height = 13
    Caption = '---'
  end
  object Button1: TButton
    Left = 128
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 238
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 1
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 334
    Top = 8
    Width = 139
    Height = 73
    Caption = 'Select'
    Items.Strings = (
      'Android'
      'iOS')
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 16
  end
end
