object fDataModulo: TfDataModulo
  OldCreateOrder = False
  Height = 150
  Width = 215
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=C:\Projetos\Bancos\Firebird\Sistema b'#225'sico\ProjetoBasic' +
        'o.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 24
    Top = 32
  end
end
