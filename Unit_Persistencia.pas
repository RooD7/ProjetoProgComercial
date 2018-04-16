unit Unit_Persistencia;

interface

uses Unit_DM, System.SysUtils, VCL.Dialogs, Unit_Utils;

Type

 Dados_Empresa = Record
                  RazaoSocial : String;
                  NomeFantasia : String;
                  Endereco : String;
                  CNPJ : String;
                  Telefone : String;
                  Lucro : Integer;
                 End;
 Dados_Cliente = Record
                  Codigo : Integer;
                  Nome : String;
                  Endereco : String;
                  CPF : String;
                  Telefone : String;
                  Celular : String;
                  Time : String;
                  Religiao : String;
                  Sexo : Integer;
                 End;
 Dados_Produto = Record
                  Codigo : Integer;
                  Descricao : String;
                  Cod_Barras : String;
                  Preco_Custo : Real;
                  Preco_Venda : Real;
                  Estoque_Atual : Real;
                  Estoque_Minimo : Real;
                  Cod_Grupo : Integer;
                  Cod_SubGrupo : Integer;
                 End;

 Dados_GrupoProd = Record
                  Codigo : Integer;
                  Descricao : String;
                 End;
 Dados_SubGrupoProd = Record
                  Codigo : Integer;
                  Descricao : String;
                  Cod_Grupo : Integer;
                 End;

  Clientes_Cadastrados = Array of Dados_Cliente;
  Produtos_Cadastrados = Array of Dados_Produto;
  GrupoProds_Cadastrados = Array of Dados_GrupoProd;
  SubGrupoProds_Cadastrados = Array of Dados_SubGrupoProd;

  Procedure Grava_Dados_Empresa(Dados_Atuais:Dados_Empresa);
  Function Retorna_Dados_Empresa : Dados_Empresa;
  //subrotinas Cliente
  Procedure Grava_Dados_Cliente(Dados_Atuais:Dados_Cliente);
  Procedure Atualiza_Dados_Cliente(Dados_Atuais:Dados_Cliente);
  Function Retorna_Dados_Cliente(Codigo : Integer) : Dados_Cliente;
  Function Retorna_Clientes_Cadastrados(Campo, Termo, Ordenacao:String): Clientes_Cadastrados;
  Function Retorna_Proximo_Codigo_Cliente : String;

  //subrotinas Produto
  Procedure Grava_Dados_Produto(Dados_Atuais:Dados_Produto);
  Procedure Atualiza_Dados_Produto(Dados_Atuais:Dados_Produto);
  Function Retorna_Dados_Produto(Codigo : Integer) : Dados_Produto;
  Function Retorna_Produtos_Cadastrados(Campo, Termo, Ordenacao:String): Produtos_Cadastrados;
  Function Retorna_Proximo_Codigo_Produto : String;

  //subrotinas GrupoProd
  Procedure Grava_Dados_GrupoProd(Dados_Atuais:Dados_GrupoProd);
  Procedure Atualiza_Dados_GrupoProd(Dados_Atuais:Dados_GrupoProd);
  Function Retorna_Dados_GrupoProd(Codigo : Integer) : Dados_GrupoProd;
  Function Retorna_GrupoProds_Cadastrados(Campo, Termo, Ordenacao:String): GrupoProds_Cadastrados;
  Function Retorna_Proximo_Codigo_GrupoProd : String;
  Function Retorna_Codigo_Grupo(Descricao:String): Integer;

  //subrotinas SubSubGrupoProd
  Procedure Grava_Dados_SubGrupoProd(Dados_Atuais:Dados_SubGrupoProd);
  Procedure Atualiza_Dados_SubGrupoProd(Dados_Atuais:Dados_SubGrupoProd);
  Function Retorna_Dados_SubGrupoProd(Codigo : Integer) : Dados_SubGrupoProd;
  Function Retorna_SubGrupoProds_Cadastrados(Campo, Termo, Ordenacao:String): SubGrupoProds_Cadastrados;
  Function Retorna_Proximo_Codigo_SubGrupoProd : String;
  Function Retorna_Codigo_SubGrupo(Descricao:String): Integer;


implementation

Procedure Commit;
  Begin
    With DM.qryCommit Do
      Begin
        SQL.Clear;
        SQL.Add('Commit');
        ExecSQL;
        Close;
      End
  End;

Procedure Grava_Dados_Empresa(Dados_Atuais:Dados_Empresa);
  Begin
    With DM.qryEmpresa Do
      Begin
        SQL.Clear;
        SQL.Add('Update Empresa Set ');
        SQL.Add('EMP_NOMEFANTASIA = '+QuotedStr(Dados_Atuais.NomeFantasia)+',');
        SQL.Add('EMP_RAZAOSOCIAL = '+ QuotedStr(Dados_Atuais.RazaoSocial)+',');
        SQL.Add('EMP_ENDERECO = '+ QuotedStr(Dados_Atuais.Endereco)+',');
        SQL.Add('EMP_CNPJ = '+ QuotedStr(Remove_Mascara(Dados_Atuais.CNPJ))+',');
        SQL.Add('EMP_TELEFONE = '+ QuotedStr(Remove_Mascara(Dados_Atuais.Telefone))+',');
        SQL.Add('EMP_PORC_LUCRO = '+ IntToStr(Dados_Atuais.Lucro));
        ExecSQL;
        Commit;
        Close;
      End;
 End;

Function Retorna_Dados_Empresa : Dados_Empresa;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From Empresa');
        Open; //A SQL acima � executada
        FetchAll;
        Result.RazaoSocial := DM.qryAux['Emp_RazaoSocial'];
        Result.NomeFantasia := DM.qryAux['Emp_NomeFantasia'];
        Result.Endereco := DM.qryAux['Emp_Endereco'];
        Result.CNPJ := DM.qryAux['Emp_CNPJ'];
        Result.Telefone := DM.qryAux['Emp_Telefone'];
        Result.Lucro := DM.qryAux['Emp_Porc_Lucro'];
      End;
  End;

Procedure Grava_Dados_Cliente(Dados_Atuais:Dados_Cliente);
  Begin
    With DM.qryCliente Do
      Begin
        SQL.Clear;
        SQL.Add('Insert Into Cliente Values(');
        SQL.Add(IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Nome)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Endereco)+',');
        SQL.Add(QuotedStr(Remove_Mascara(Dados_Atuais.CPF))+',');
        SQL.Add(QuotedStr(Remove_Mascara(Dados_Atuais.Telefone))+',');
        SQL.Add(QuotedStr(Remove_Mascara(Dados_Atuais.Celular))+',');
        SQL.Add(QuotedStr(Dados_Atuais.Time)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Religiao)+',');
        SQL.Add(IntToStr(Dados_Atuais.Sexo));
        SQL.Add(')');
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Procedure Atualiza_Dados_Cliente(Dados_Atuais:Dados_Cliente);
  Begin
    With DM.qryCliente Do
      Begin
        SQL.Clear;
        SQL.Add('Update Cliente Set');
        SQL.Add('Cli_Codigo = '+IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add('Cli_Nome = '+QuotedStr(Dados_Atuais.Nome)+',');
        SQL.Add('Cli_Endereco = '+QuotedStr(Dados_Atuais.Endereco)+',');
        SQL.Add('Cli_CPF = '+QuotedStr(Remove_Mascara(Dados_Atuais.CPF))+',');
        SQL.Add('Cli_Telefone = '+QuotedStr(Remove_Mascara(Dados_Atuais.Telefone))+',');
        SQL.Add('Cli_Celular = '+QuotedStr(Remove_Mascara(Dados_Atuais.Celular))+',');
        SQL.Add('Cli_Time = '+QuotedStr(Dados_Atuais.Time)+',');
        SQL.Add('Cli_Religiao = '+QuotedStr(Dados_Atuais.Religiao)+',');
        SQL.Add('Cli_Sexo = '+IntToStr(Dados_Atuais.Sexo));
        SQL.Add('Where Cli_Codigo = '+IntToStr(Dados_Atuais.Codigo));
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Function Retorna_Dados_Cliente(Codigo : Integer) : Dados_Cliente;
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From Cliente');
        SQL.Add('Where Cli_Codigo = '+IntToStr(Codigo));
        Open; //A SQL acima � executada
        FetchAll;
        Result.Codigo := DM.qryAux['Cli_Codigo'];
        Result.Nome := DM.qryAux['Cli_Nome'];
        Result.Endereco := DM.qryAux['Cli_Endereco'];
        Result.CPF := DM.qryAux['Cli_CPF'];
        Result.Telefone := DM.qryAux['Cli_Telefone'];
        Result.Celular := DM.qryAux['Cli_Celular'];
        Result.Time := DM.qryAux['Cli_Time'];
        Result.Religiao := DM.qryAux['Cli_Religiao'];
        Result.Sexo := DM.qryAux['Cli_Sexo'];
      End;
  End;

Function Retorna_Clientes_Cadastrados(Campo, Termo, Ordenacao:String): Clientes_Cadastrados;
  { Valores poss�veis para "Campo"
      Codigo : Cli_Codigo
      Nome : Cli_Nome
      Endereco : Cli_Endereco
      Telefone : Cli_Telefone
      CPF : Cli_CPF
  }
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From Cliente');
        If LowerCase(Campo) = 'codigo'
          Then Begin
                 SQL.Add('Where Cli_Codigo = '+Termo);
               End;
        If LowerCase(Campo) = 'nome'
          Then Begin
                 SQL.Add('Where Cli_Nome Like '+QuotedStr(Termo+'%'));
               End;
        If LowerCase(Campo) = 'endereco'
          Then Begin
                 SQL.Add('Where Cli_Endereco Like '+QuotedStr(Termo+'%'));
               End;
        If LowerCase(Campo) = 'telefone'
          Then Begin
                 SQL.Add('Where Cli_Telefone Like '+QuotedStr(Remove_Mascara(Termo)+'%'));
               End;
        If LowerCase(Campo) = 'cpf'
          Then Begin
                 SQL.Add('Where Cli_CPF Like '+QuotedStr(Remove_Mascara(Termo)+'%'));
               End;
        If Ordenacao = 'AZ'
          Then SQL.Add('Order By Cli_Nome Asc');
        If Ordenacao = 'ZA'
          Then SQL.Add('Order By Cli_Nome Desc');
        If Ordenacao = '09'
          Then SQL.Add('Order By Cli_Codigo Asc');
        If Ordenacao = '90'
          Then SQL.Add('Order By Cli_Codigo Desc');
        Open; //A SQL acima � executada
        ShowMessage(SQL.Text);
        FetchAll;
        SetLength(Result,0);
        For I := 1 to DM.qryAux.RecordCount do
          Begin
            SetLength(Result,Length(Result)+1);
            Result[Length(Result)-1].Codigo := DM.qryAux['Cli_Codigo'];
            Result[Length(Result)-1].Nome := DM.qryAux['Cli_Nome'];
            Result[Length(Result)-1].Endereco := DM.qryAux['Cli_Endereco'];
            Result[Length(Result)-1].CPF := DM.qryAux['Cli_CPF'];
            Result[Length(Result)-1].Telefone := DM.qryAux['Cli_Telefone'];
            Result[Length(Result)-1].Celular := DM.qryAux['Cli_Celular'];
            Result[Length(Result)-1].Time := DM.qryAux['Cli_Time'];
            Result[Length(Result)-1].Religiao := DM.qryAux['Cli_Religiao'];
            Result[Length(Result)-1].Sexo := DM.qryAux['Cli_Sexo'];
            DM.qryAux.Next;
          End;
        Close;
      End;
  End;

Function Retorna_Proximo_Codigo_Cliente : String;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select Cli_Codigo');
        SQL.Add('From Cliente');
        SQL.Add('Order By Cli_Codigo Desc');
        Open;
        If DM.qryAux.RecordCount <> 0
          Then Result := IntToStr(DM.qryAux['Cli_Codigo']+1)
          Else Result := '1';
        Close;
      End;
  End;

Procedure Grava_Dados_Produto(Dados_Atuais:Dados_Produto);
  Begin
    With DM.qryProduto Do
      Begin
        SQL.Clear;
        SQL.Add('Insert Into Produto Values(');
        SQL.Add(IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Descricao)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Cod_Barras)+',');
        SQL.Add(FloatToStr(Dados_Atuais.Preco_Custo)+',');
        SQL.Add(FloatToStr(Dados_Atuais.Preco_Venda)+',');
        SQL.Add(FloatToStr(Dados_Atuais.Estoque_Atual)+',');
        SQL.Add(FloatToStr(Dados_Atuais.Estoque_Minimo)+',');
        SQL.Add(IntToStr(Dados_Atuais.Cod_Grupo)+',');
        SQL.Add(IntToStr(Dados_Atuais.Cod_SubGrupo));
        SQL.Add(')');
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Procedure Atualiza_Dados_Produto(Dados_Atuais:Dados_Produto);
  Begin
    With DM.qryProduto Do
      Begin
        SQL.Clear;
        SQL.Add('Update Produto Set');
        SQL.Add('Pro_Codigo = '+IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add('Pro_Descricao = '+QuotedStr(Dados_Atuais.Descricao)+',');
        SQL.Add('Pro_CodBarras = '+QuotedStr(Dados_Atuais.Cod_Barras)+',');
        SQL.Add('Pro_PreCusto = '+FloatToStr(Dados_Atuais.Preco_Custo)+',');
        SQL.Add('Pro_PreVenda = '+FloatToStr(Dados_Atuais.Preco_Venda)+',');
        SQL.Add('Pro_Estoque = '+FloatToStr(Dados_Atuais.Estoque_Atual)+',');
        SQL.Add('Pro_EstoqueMin = '+FloatToStr(Dados_Atuais.Estoque_Minimo));
        SQL.Add('Pro_Cod_Grupo = '+IntToStr(Dados_Atuais.Cod_Grupo)+',');
        SQL.Add('Pro_Cod_SubGrupo = '+IntToStr(Dados_Atuais.Cod_SubGrupo)+',');
        SQL.Add('Where Pro_Codigo = '+IntToStr(Dados_Atuais.Codigo));
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Function Retorna_Dados_Produto(Codigo : Integer) : Dados_Produto;
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From Produto');
        SQL.Add('Where Pro_Codigo = '+IntToStr(Codigo));
        Open; //A SQL acima � executada
        FetchAll;
        Result.Codigo := DM.qryAux['Pro_Codigo'];
        Result.Descricao := DM.qryAux['Pro_Descricao'];
        Result.Cod_Barras := DM.qryAux['Pro_CodBarras'];
        Result.Preco_Custo := DM.qryAux['Pro_PreCusto'];
        Result.Preco_Venda := DM.qryAux['Pro_PreVenda'];
        Result.Estoque_Atual := DM.qryAux['Pro_Estoque'];
        Result.Estoque_Minimo := DM.qryAux['Pro_EstoqueMin'];
        Result.Cod_Grupo := DM.qryAux['Pro_Cod_Grupo'];
        Result.Cod_SubGrupo := DM.qryAux['Pro_Cod_SubGrupo'];
      End;
  End;

Function Retorna_Produtos_Cadastrados(Campo, Termo, Ordenacao:String): Produtos_Cadastrados;
  { Valores poss�veis para "Campo"
      Codigo : Pro_Codigo
      Descricao : Pro_Descricao
      Codbarras : Pro_CodBarras
  }
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From Produto');
        If LowerCase(Campo) = 'codigo'
          Then Begin
                 SQL.Add('Where Pro_Codigo = '+Termo);
               End;
        If LowerCase(Campo) = 'descricao'
          Then Begin
                 SQL.Add('Where Pro_Descricao Like '+QuotedStr(Termo+'%'));
               End;
        If LowerCase(Campo) = 'codbarras'
          Then Begin
                 SQL.Add('Where Pro_CodBarras Like '+QuotedStr(Termo+'%'));
               End;
        If Ordenacao = 'AZ'
          Then SQL.Add('Order By Pro_Descricao Asc');
        If Ordenacao = 'ZA'
          Then SQL.Add('Order By Pro_Descricao Desc');
        If Ordenacao = '09'
          Then SQL.Add('Order By Pro_Codigo Asc');
        If Ordenacao = '90'
          Then SQL.Add('Order By Pro_Codigo Desc');
        Open; //A SQL acima � executada
        FetchAll;
        SetLength(Result,0);
        For I := 1 to DM.qryAux.RecordCount do
          Begin
            SetLength(Result,Length(Result)+1);
            Result[Length(Result)-1].Codigo := DM.qryAux['Pro_Codigo'];
            Result[Length(Result)-1].Descricao := DM.qryAux['Pro_Descricao'];
            Result[Length(Result)-1].Cod_Barras := DM.qryAux['Pro_CodBarras'];
            Result[Length(Result)-1].Preco_Custo := DM.qryAux['Pro_PreCusto'];
            Result[Length(Result)-1].Preco_Venda := DM.qryAux['Pro_PreVenda'];
            Result[Length(Result)-1].Estoque_Atual := DM.qryAux['Pro_Estoque'];
            Result[Length(Result)-1].Estoque_Minimo := DM.qryAux['Pro_EstoqueMin'];
            DM.qryAux.Next;
          End;
        Close;
      End;
  End;

Function Retorna_Proximo_Codigo_Produto : String;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select Pro_Codigo');
        SQL.Add('From Produto');
        SQL.Add('Order By Pro_Codigo Desc');
        Open;
        If DM.qryAux.RecordCount <> 0
          Then Result := IntToStr(DM.qryAux['Pro_Codigo']+1)
          Else Result := '1';
        Close;
      End;
  End;

//Subrotinas de Grupo de Produtos
Procedure Grava_Dados_GrupoProd(Dados_Atuais:Dados_GrupoProd);
  Begin
    With DM.qryGrupoProd Do
      Begin
        SQL.Clear;
        SQL.Add('Insert Into GrupoProd Values(');
        SQL.Add(IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Descricao));
        SQL.Add(')');
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Procedure Atualiza_Dados_GrupoProd(Dados_Atuais:Dados_GrupoProd);
  Begin
    With DM.qryGrupoProd Do
      Begin
        SQL.Clear;
        SQL.Add('Update GrupoProd Set');
        SQL.Add('GruP_Codigo = '+IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add('GruP_Descricao = '+QuotedStr(Dados_Atuais.Descricao));
        SQL.Add('Where GruP_Codigo = '+IntToStr(Dados_Atuais.Codigo));
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Function Retorna_Dados_GrupoProd(Codigo : Integer) : Dados_GrupoProd;
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From GrupoProd');
        SQL.Add('Where GruP_Codigo = '+IntToStr(Codigo));
        Open; //A SQL acima � executada
        FetchAll;
        Result.Codigo := DM.qryAux['GruP_Codigo'];
        Result.Descricao := DM.qryAux['GruP_Descricao'];
      End;
  End;

Function Retorna_GrupoProds_Cadastrados(Campo, Termo, Ordenacao:String): GrupoProds_Cadastrados;
  { Valores poss�veis para "Campo"
      Codigo : GruP_Codigo
      Descricao : GruP_Descricao
  }
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From GrupoProd');
        If LowerCase(Campo) = 'codigo'
          Then Begin
                 SQL.Add('Where GruP_Codigo = '+Termo);
               End;
        If LowerCase(Campo) = 'descricao'
          Then Begin
                 SQL.Add('Where GruP_Descricao Like '+QuotedStr(Termo+'%'));
               End;
        If Ordenacao = 'AZ'
          Then SQL.Add('Order By GruP_Descricao Asc');
        If Ordenacao = 'ZA'
          Then SQL.Add('Order By GruP_Descricao Desc');
        If Ordenacao = '09'
          Then SQL.Add('Order By GruP_Codigo Asc');
        If Ordenacao = '90'
          Then SQL.Add('Order By GruP_Codigo Desc');
        Open; //A SQL acima � executada
        FetchAll;
        SetLength(Result,0);
        For I := 1 to DM.qryAux.RecordCount do
          Begin
            SetLength(Result,Length(Result)+1);
            Result[Length(Result)-1].Codigo := DM.qryAux['GruP_Codigo'];
            Result[Length(Result)-1].Descricao := DM.qryAux['GruP_Descricao'];
            DM.qryAux.Next;
          End;
        Close;
      End;
  End;

Function Retorna_Proximo_Codigo_GrupoProd : String;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select GruP_Codigo');
        SQL.Add('From GrupoProd');
        SQL.Add('Order By GruP_Codigo Desc');
        Open;
        If DM.qryAux.RecordCount <> 0
          Then Result := IntToStr(DM.qryAux['GruP_Codigo']+1)
          Else Result := '1';
        Close;
      End;
  End;

Function Retorna_Codigo_Grupo(Descricao:String): Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select GruP_Codigo');
        SQL.Add('From GrupoProd');
        SQL.Add('Where Grup_Descricao = '+QuotedStr(Descricao));
        Open;
        If DM.qryAux.RecordCount <> 0
          Then Result := DM.qryAux['GruP_Codigo'];
        Close;
      End;
  End;


//Subrotinas de SubGrupo de Produtos
Procedure Grava_Dados_SubGrupoProd(Dados_Atuais:Dados_SubGrupoProd);
  Begin
    With DM.qrySubGrupoProd Do
      Begin
        SQL.Clear;
        SQL.Add('Insert Into SubGrupoProd Values(');
        SQL.Add(IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add(QuotedStr(Dados_Atuais.Descricao)+',');
        SQL.Add(IntToStr(Dados_Atuais.Cod_Grupo));
        SQL.Add(')');
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Procedure Atualiza_Dados_SubGrupoProd(Dados_Atuais:Dados_SubGrupoProd);
  Begin
    With DM.qrySubGrupoProd Do
      Begin
        SQL.Clear;
        SQL.Add('Update SubGrupoProd Set');
        SQL.Add('SubGruP_Codigo = '+IntToStr(Dados_Atuais.Codigo)+',');
        SQL.Add('SubGruP_Descricao = '+QuotedStr(Dados_Atuais.Descricao)+',');
        SQL.Add('SubGruP_CodGrupo = '+IntToStr(Dados_Atuais.Cod_Grupo));
        SQL.Add('Where SubGruP_Codigo = '+IntToStr(Dados_Atuais.Codigo));
        ExecSQL;
        Commit;
        Close;
      End;
  End;

Function Retorna_Dados_SubGrupoProd(Codigo : Integer) : Dados_SubGrupoProd;
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From SubGrupoProd');
        SQL.Add('Where SubGruP_Codigo = '+IntToStr(Codigo));
        Open; //A SQL acima � executada
        FetchAll;
        Result.Codigo := DM.qryAux['SubGruP_Codigo'];
        Result.Descricao := DM.qryAux['SubGruP_Descricao'];
        Result.Cod_Grupo := DM.qryAux['SubGruP_CodGrupo'];
      End;
  End;

Function Retorna_SubGrupoProds_Cadastrados(Campo, Termo, Ordenacao:String): SubGrupoProds_Cadastrados;
  { Valores poss�veis para "Campo"
      Codigo : SubGruP_Codigo
      Descricao : SubGruP_Descricao
      cod_grupo : SUBGRUP_CODGRUPO
  }
  Var
    I : Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select *');
        SQL.Add('From SubGrupoProd');
        If LowerCase(Campo) = 'codigo'
          Then Begin
                 SQL.Add('Where SubGruP_Codigo = '+Termo);
               End;
        If LowerCase(Campo) = 'descricao'
          Then Begin
                 SQL.Add('Where SubGruP_Descricao Like '+QuotedStr(Termo+'%'));
               End;
        If LowerCase(Campo) = 'cod_grupo'
          Then Begin
                 SQL.Add('Where SUBGRUP_CODGRUPO = '+Termo);
               End;
        If Ordenacao = 'AZ'
          Then SQL.Add('Order By SubGruP_Descricao Asc');
        If Ordenacao = 'ZA'
          Then SQL.Add('Order By SubGruP_Descricao Desc');
        If Ordenacao = '09'
          Then SQL.Add('Order By SubGruP_Codigo Asc');
        If Ordenacao = '90'
          Then SQL.Add('Order By SubGruP_Codigo Desc');
        Open; //A SQL acima � executada
        FetchAll;
        SetLength(Result,0);
        For I := 1 to DM.qryAux.RecordCount do
          Begin
            SetLength(Result,Length(Result)+1);
            Result[Length(Result)-1].Codigo := DM.qryAux['SubGruP_Codigo'];
            Result[Length(Result)-1].Descricao := DM.qryAux['SubGruP_Descricao'];
            Result[Length(Result)-1].Cod_Grupo := DM.qryAux['SubGruP_CodGrupo'];
            DM.qryAux.Next;
          End;
        Close;
      End;
  End;

Function Retorna_Proximo_Codigo_SubGrupoProd : String;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select SubGruP_Codigo');
        SQL.Add('From SubGrupoProd');
        SQL.Add('Order By SubGruP_Codigo Desc');
        Open;
        If DM.qryAux.RecordCount <> 0
          Then Result := IntToStr(DM.qryAux['SubGruP_Codigo']+1)
          Else Result := '1';
        Close;
      End;
  End;

Function Retorna_Codigo_SubGrupo(Descricao:String): Integer;
  Begin
    With DM.qryAux Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('Select SubGrup_Codigo');
        SQL.Add('From SubGrupoProd');
        SQL.Add('Where SubGrup_Descricao = '+QuotedStr(Descricao));
        Open;
        If DM.qryAux.RecordCount <> 0
          Then Result := DM.qryAux['SubGrup_Codigo'];
        Close;
      End;
  End;

end.
