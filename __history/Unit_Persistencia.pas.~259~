unit Unit_Persistencia;

interface

uses Unit_DM, System.SysUtils, VCL.Dialogs, Unit_Utils, System.Variants;

Type

   Dados_Empresa = Record
    RazaoSocial: String;
    NomeFantasia: String;
    Endereco: String;
    InscEstadual: String;
    UF: String;
    TelResp: String;
    NomeResp: String;
    CargoResp: Integer;
    Email: String;
    CNPJ: String;
    Telefone: String;
    Lucro: Integer;
  End;

  Dados_Cliente = Record
    Codigo: Integer;
    Nome: String;
    Endereco: String;
    CPF: String;
    Telefone: String;
    Celular: String;
    Time: String;
    Religiao: String;
    Sexo: Integer;
  End;

  Dados_Produto = Record
    Codigo: Integer;
    Descricao: String;
    Cod_Barras: String;
    Preco_Custo: Real;
    Preco_Venda: Real;
    Estoque_Atual: Real;
    Estoque_Minimo: Real;
    Cod_Grupo: Integer;
    Cod_SubGrupo: Integer;
  End;

  Dados_Produto_Venda = Record
    Codigo: Integer;
    Preco_Venda: Real;
    Qtde: Real;
  End;

  Dados_GrupoProd = Record
    Codigo: Integer;
    Descricao: String;
  End;

  Dados_SubGrupoProd = Record
    Codigo: Integer;
    Descricao: String;
    Cod_Grupo: Integer;
  End;

  Dados_Fornecedor = Record
    Codigo: Integer;
    RazaoSocial: String;
    NomeFantasia: String;
    Endereco: String;
    CNPJ: String;
    Telefone: String;
    Email: String;
    InscricaoEst: String;
    UF: String;
  End;

  Ent_Caixa = Record
    Data: String;
    Total: Real;
  End;

  Cont_Rec = Record
    Cod: Integer;
    CliCod: Integer;
    Valor: Real;
    Data_Vencimento: String;
  End;

  Clientes_Cadastrados = Array of Dados_Cliente;
  Produtos_Cadastrados = Array of Dados_Produto;
  GrupoProds_Cadastrados = Array of Dados_GrupoProd;
  SubGrupoProds_Cadastrados = Array of Dados_SubGrupoProd;
  Produtos_Venda = Array of Dados_Produto_Venda;

  Prods_Com_SubGrupo = Array of Integer;
  Entradas_Caixa = Array of Ent_Caixa;
  Contas_Receber = Array of Cont_Rec;
  StrArray = array of String;
  DoubleArray = array of Double;

// subrotinas Empresa
Procedure Grava_Dados_Empresa(Dados_Atuais: Dados_Empresa);
Function Retorna_Dados_Empresa: Dados_Empresa;
Procedure Atualiza_Dados_Empresa(Dados_Atuais: Dados_Empresa);
//Function Retorna_Empresas_Cadastradas(Campo, Termo, Ordenacao: String)
  //: Empresas_Cadastradas;
//Function Retorna_Proximo_Codigo_Empresa: String;

// subrotinas Cliente
Procedure Grava_Dados_Cliente(Dados_Atuais: Dados_Cliente);
Procedure Atualiza_Dados_Cliente(Dados_Atuais: Dados_Cliente);
Function Retorna_Dados_Cliente(Codigo: Integer): Dados_Cliente;
Function Retorna_Clientes_Cadastrados(Campo, Termo, Ordenacao: String)
  : Clientes_Cadastrados;
Function Retorna_Proximo_Codigo_Cliente: String;
Function Retorna_Codigo_Cliente(Nome:String): Integer;

// subrotinas Produto
Procedure Grava_Dados_Produto(Dados_Atuais: Dados_Produto);
Procedure Atualiza_Dados_Produto(Dados_Atuais: Dados_Produto);
Function Retorna_Dados_Produto(Codigo: Integer): Dados_Produto;
Function Retorna_Produtos_Cadastrados(Campo, Termo, Ordenacao: String)
  : Produtos_Cadastrados;
Function Retorna_Proximo_Codigo_Produto: String;
Function Tem_Prod_SubGrupo(Cod_SubGrupo: Integer): Prods_Com_SubGrupo;
Procedure Atualiza_Produtos_Cascata(Vetor_Prods: Prods_Com_SubGrupo;
  Cod_Grupo: Integer);
Procedure Atualiza_Preco_Venda(Cod_Grupo, Cod_SubGrupo: Integer;
  Porcentagem: Real);

// subrotinas GrupoProd
Procedure Grava_Dados_GrupoProd(Dados_Atuais: Dados_GrupoProd);
Procedure Atualiza_Dados_GrupoProd(Dados_Atuais: Dados_GrupoProd);
Function Retorna_Dados_GrupoProd(Codigo: Integer): Dados_GrupoProd;
Function Retorna_GrupoProds_Cadastrados(Campo, Termo, Ordenacao: String)
  : GrupoProds_Cadastrados;
Function Retorna_Proximo_Codigo_GrupoProd: String;
Function Retorna_Codigo_Grupo(Descricao: String): Integer;

// subrotinas SubSubGrupoProd
Procedure Grava_Dados_SubGrupoProd(Dados_Atuais: Dados_SubGrupoProd);
Procedure Atualiza_Dados_SubGrupoProd(Dados_Atuais: Dados_SubGrupoProd);
Function Retorna_Dados_SubGrupoProd(Codigo: Integer): Dados_SubGrupoProd;
Function Retorna_SubGrupoProds_Cadastrados(Campo, Termo, Ordenacao: String)
  : SubGrupoProds_Cadastrados;
Function Retorna_Proximo_Codigo_SubGrupoProd: String;
Function Retorna_Codigo_SubGrupo(Descricao: String): Integer;

// subrotinas de vendas
Function Retorna_Proximo_Codigo_Venda: String;
Function Retorna_Prox_Codigo_ProdVenda: String;
Procedure Grava_Dados_Venda(Cod_Venda: String; Data_Venda: TDate; Total: Real;
  Vet_Prod: Produtos_Venda);
Function Retorna_Proximo_Codigo_ContReceber: String;
Procedure Grava_Dados_ContasReceber(CR_Cod: String; Cod_Venda: String;
  NParc: Integer; Valor: Real; Status: Integer; Data_Venc: TDate;
  Data_Pagamento: TDate; Cli_cod: Integer);

Function Retorna_Entradas_Caixa(Data: TDate): Entradas_Caixa;
Function Retorna_Contas_Receber(): Contas_Receber;
procedure pagarConta(Cod: string; Data: TDate);

Function Retorna_Proximo_Codigo_CR: String;
procedure arrumardata_parcelas(Cod_cr: string; n:integer);

//graficos
function Retorna_Total_VendaPorMes(Mes: String):Double;
function Retorna_Dados_VendaPorMes(Mes: String):Double;
function Retorna_Total_ProdPorMes01(Mes: String):StrArray;
function Retorna_Total_ProdPorMes02(Mes: String):DoubleArray;

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

Procedure Grava_Dados_Empresa(Dados_Atuais: Dados_Empresa);
Begin
  With DM.qryEmpresa Do
  Begin
    SQL.Clear;
    SQL.Add('Update Empresa Set ');
    SQL.Add('Emp_NomeFantasia = ' + QuotedStr(Dados_Atuais.NomeFantasia) + ',');
    SQL.Add('Emp_RazaoSocial = ' + QuotedStr(Dados_Atuais.RazaoSocial) + ',');
    SQL.Add('Emp_Endereco = ' + QuotedStr(Dados_Atuais.Endereco) + ',');
    SQL.Add('Emp_InscEstadual = ' + QuotedStr(Dados_Atuais.InscEstadual) + ',');
    SQL.Add('Emp_UF = ' + QuotedStr(Dados_Atuais.UF) + ',');
    SQL.Add('Emp_TelResp = ' +
      QuotedStr(Remove_Mascara(Dados_Atuais.TelResp)) + ',');
    SQL.Add('Emp_NomeResp = ' + QuotedStr(Dados_Atuais.NomeResp) + ',');
    SQL.Add('Emp_CargoResp = ' + IntToStr(Dados_Atuais.CargoResp) + ',');
    SQL.Add('Emp_Email = ' + QuotedStr(Dados_Atuais.Email) + ',');
    SQL.Add('Emp_CNPJ = ' + QuotedStr(Remove_Mascara(Dados_Atuais.CNPJ)) + ',');
    SQL.Add('Emp_Telefone = ' +
      QuotedStr(Remove_Mascara(Dados_Atuais.Telefone)) + ',');
    SQL.Add('Emp_Porc_Lucro = ' + IntToStr(Dados_Atuais.Lucro));
    ExecSQL;
    Commit;
    Close;
  End;
End;

Procedure Atualiza_Dados_Empresa(Dados_Atuais: Dados_Empresa);
Begin
  With DM.qryEmpresa Do
  Begin
    SQL.Clear;
    SQL.Add('Update Empresa Set ');
    SQL.Add('Emp_NomeFantasia = ' + QuotedStr(Dados_Atuais.NomeFantasia) + ',');
    SQL.Add('Emp_RazaoSocial = ' + QuotedStr(Dados_Atuais.RazaoSocial) + ',');
    SQL.Add('Emp_Endereco = ' + QuotedStr(Dados_Atuais.Endereco) + ',');
    SQL.Add('Emp_InscEstadual = ' + QuotedStr(Dados_Atuais.InscEstadual) + ',');
    SQL.Add('Emp_UF = ' + QuotedStr(Dados_Atuais.UF) + ',');
    SQL.Add('Emp_TelResp = ' +
      QuotedStr(Remove_Mascara(Dados_Atuais.TelResp)) + ',');
    SQL.Add('Emp_NomeResp = ' + QuotedStr(Dados_Atuais.NomeResp) + ',');
    SQL.Add('Emp_CargoResp = ' + IntToStr(Dados_Atuais.CargoResp) + ',');
    SQL.Add('Emp_Email = ' + QuotedStr(Dados_Atuais.Email) + ',');
    SQL.Add('Emp_CNPJ = ' + QuotedStr(Remove_Mascara(Dados_Atuais.CNPJ)) + ',');
    SQL.Add('Emp_Telefone = ' +
      QuotedStr(Remove_Mascara(Dados_Atuais.Telefone)) + ',');
    SQL.Add('Emp_Porc_Lucro = ' + IntToStr(Dados_Atuais.Lucro));
    ExecSQL;
    Commit;
    Close;
  End;
End;

Function Retorna_Dados_Empresa: Dados_Empresa;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From Empresa');
    Open; // A SQL acima é executada
    FetchAll;
    if DM.qryAux['Emp_RazaoSocial'] <> null then
      Result.RazaoSocial := DM.qryAux['Emp_RazaoSocial']
    else
      Result.RazaoSocial := '';
    if DM.qryAux['Emp_NomeFantasia'] <> null then
      Result.NomeFantasia := DM.qryAux['Emp_NomeFantasia']
    else
      Result.NomeFantasia := '';
    if DM.qryAux['Emp_Endereco'] <> null then
      Result.Endereco := DM.qryAux['Emp_Endereco']
    else
      Result.Endereco := '';
    if DM.qryAux['Emp_InscEstadual'] <> null then
      Result.CNPJ := DM.qryAux['Emp_InscEstadual']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_UF'] <> null then
      Result.CNPJ := DM.qryAux['Emp_UF']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_TelResp'] <> null then
      Result.CNPJ := DM.qryAux['Emp_TelResp']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_NomeResp'] <> null then
      Result.CNPJ := DM.qryAux['Emp_NomeResp']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_CargoResp'] <> null then
      Result.CNPJ := DM.qryAux['Emp_CargoResp']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_Email'] <> null then
      Result.CNPJ := DM.qryAux['Emp_Email']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_CNPJ'] <> null then
      Result.CNPJ := DM.qryAux['Emp_CNPJ']
    else
      Result.CNPJ := '';
    if DM.qryAux['Emp_Telefone'] <> null then
      Result.Telefone := DM.qryAux['Emp_Telefone']
    else
      Result.Telefone := '';
    if DM.qryAux['Emp_Porc_Lucro'] <> null then
      Result.Lucro := DM.qryAux['Emp_Porc_Lucro']
    else
      Result.Lucro := 0;
  End;
End;

/// NAO FORAM IMPLEMENTADAS AS FUNCOES DA EMPRESA
//Function Retorna_Empresas_Cadastradas(Campo, Termo, Ordenacao: String);
  //: Empresas_Cadastradas;
//Function Retorna_Proximo_Codigo_Empresa: String;
// POIS NAO EXISTE MAIS DE UMA EMPRESA NO SISTEMA

Procedure Grava_Dados_Cliente(Dados_Atuais: Dados_Cliente);
Begin
  With DM.qryCliente Do
  Begin
    SQL.Clear;
    SQL.Add('Insert Into Cliente Values(');
    SQL.Add(IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Nome) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Endereco) + ',');
    SQL.Add(QuotedStr(Remove_Mascara(Dados_Atuais.CPF)) + ',');
    SQL.Add(QuotedStr(Remove_Mascara(Dados_Atuais.Telefone)) + ',');
    SQL.Add(QuotedStr(Remove_Mascara(Dados_Atuais.Celular)) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Time) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Religiao) + ',');
    SQL.Add(IntToStr(Dados_Atuais.Sexo));
    SQL.Add(')');
    ExecSQL;
    Commit;
    Close;
  End;
End;

Procedure Atualiza_Dados_Cliente(Dados_Atuais: Dados_Cliente);
Begin
  With DM.qryCliente Do
  Begin
    SQL.Clear;
    SQL.Add('Update Cliente Set');
    SQL.Add('Cli_Codigo = ' + IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add('Cli_Nome = ' + QuotedStr(Dados_Atuais.Nome) + ',');
    SQL.Add('Cli_Endereco = ' + QuotedStr(Dados_Atuais.Endereco) + ',');
    SQL.Add('Cli_CPF = ' + QuotedStr(Remove_Mascara(Dados_Atuais.CPF)) + ',');
    SQL.Add('Cli_Telefone = ' +
      QuotedStr(Remove_Mascara(Dados_Atuais.Telefone)) + ',');
    SQL.Add('Cli_Celular = ' +
      QuotedStr(Remove_Mascara(Dados_Atuais.Celular)) + ',');
    SQL.Add('Cli_Time = ' + QuotedStr(Dados_Atuais.Time) + ',');
    SQL.Add('Cli_Religiao = ' + QuotedStr(Dados_Atuais.Religiao) + ',');
    SQL.Add('Cli_Sexo = ' + IntToStr(Dados_Atuais.Sexo));
    SQL.Add('Where Cli_Codigo = ' + IntToStr(Dados_Atuais.Codigo));
    ExecSQL;
    Commit;
    Close;
  End;
End;

Function Retorna_Dados_Cliente(Codigo: Integer): Dados_Cliente;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From Cliente');
    SQL.Add('Where Cli_Codigo = ' + IntToStr(Codigo));
    Open; // A SQL acima é executada
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

Function Retorna_Codigo_Cliente(Nome:String): Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Cli_codigo');
    SQL.Add('From Cliente');
    SQL.Add('Where Cli_Nome = ' +QuotedStr(Nome));
    //ShowMessage(SQL.Text);
    Open; // A SQL acima é executada
    FetchAll;
    Result := DM.qryAux['Cli_Codigo'];

  End;
End;

Function Retorna_Clientes_Cadastrados(Campo, Termo, Ordenacao: String)
  : Clientes_Cadastrados;
{ Valores possíveis para "Campo"
  Codigo : Cli_Codigo
  Nome : Cli_Nome
  Endereco : Cli_Endereco
  Telefone : Cli_Telefone
  CPF : Cli_CPF
}
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From Cliente');
    If LowerCase(Campo) = 'codigo' Then
    Begin
      SQL.Add('Where Cli_Codigo = ' + Termo);
    End;
    If LowerCase(Campo) = 'nome' Then
    Begin
      SQL.Add('Where Cli_Nome Like ' + QuotedStr(Termo + '%'));
    End;
    If LowerCase(Campo) = 'endereco' Then
    Begin
      SQL.Add('Where Cli_Endereco Like ' + QuotedStr(Termo + '%'));
    End;
    If LowerCase(Campo) = 'telefone' Then
    Begin
      SQL.Add('Where Cli_Telefone Like ' +
        QuotedStr(Remove_Mascara(Termo) + '%'));
    End;
    If LowerCase(Campo) = 'cpf' Then
    Begin
      SQL.Add('Where Cli_CPF Like ' + QuotedStr(Remove_Mascara(Termo) + '%'));
    End;
    If Ordenacao = 'AZ' Then
      SQL.Add('Order By Cli_Nome Asc');
    If Ordenacao = 'ZA' Then
      SQL.Add('Order By Cli_Nome Desc');
    If Ordenacao = '09' Then
      SQL.Add('Order By Cli_Codigo Asc');
    If Ordenacao = '90' Then
      SQL.Add('Order By Cli_Codigo Desc');
    Open; // A SQL acima é executada
    //ShowMessage(SQL.Text);
    FetchAll;
    SetLength(Result, 0);
    For I := 1 to DM.qryAux.RecordCount do
    Begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1].Codigo := DM.qryAux['Cli_Codigo'];
      Result[Length(Result) - 1].Nome := DM.qryAux['Cli_Nome'];
      Result[Length(Result) - 1].Endereco := DM.qryAux['Cli_Endereco'];
      Result[Length(Result) - 1].CPF := DM.qryAux['Cli_CPF'];
      Result[Length(Result) - 1].Telefone := DM.qryAux['Cli_Telefone'];
      Result[Length(Result) - 1].Celular := DM.qryAux['Cli_Celular'];
      Result[Length(Result) - 1].Time := DM.qryAux['Cli_Time'];
      Result[Length(Result) - 1].Religiao := DM.qryAux['Cli_Religiao'];
      Result[Length(Result) - 1].Sexo := DM.qryAux['Cli_Sexo'];
      DM.qryAux.Next;
    End;
    Close;
  End;
End;

Function Retorna_Proximo_Codigo_Cliente: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Cli_Codigo');
    SQL.Add('From Cliente');
    SQL.Add('Order By Cli_Codigo Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['Cli_Codigo'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

Procedure Grava_Dados_Produto(Dados_Atuais: Dados_Produto);
Begin
  With DM.qryProduto Do
  Begin
    SQL.Clear;
    SQL.Add('Insert Into Produto Values(');
    SQL.Add(IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Descricao) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Cod_Barras) + ',');
    SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Dados_Atuais.Preco_Custo, ffnumber,
      12, 2)) + ',');
    SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Dados_Atuais.Preco_Venda, ffnumber,
      12, 2)) + ',');
    SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Dados_Atuais.Estoque_Atual,
      ffnumber, 12, 2)) + ',');
    SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Dados_Atuais.Estoque_Minimo,
      ffnumber, 12, 2)) + ',');
    SQL.Add(IntToStr(Dados_Atuais.Cod_Grupo) + ',');
    SQL.Add(IntToStr(Dados_Atuais.Cod_SubGrupo));
    SQL.Add(')');
    ExecSQL;
    Commit;
    Close;
  End;
End;

Procedure Atualiza_Dados_Produto(Dados_Atuais: Dados_Produto);
Begin
  With DM.qryProduto Do
  Begin
    SQL.Clear;
    SQL.Add('Update Produto Set');
    SQL.Add('Pro_Codigo = ' + IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add('Pro_Descricao = ' + QuotedStr(Dados_Atuais.Descricao) + ',');
    SQL.Add('Pro_CodBarras = ' + QuotedStr(Dados_Atuais.Cod_Barras) + ',');
    SQL.Add('Pro_PreCusto = ' + Troca_Virgula_Ponto
      (FloatToStrf(Dados_Atuais.Preco_Custo, ffnumber, 12, 2)) + ',');
    SQL.Add('Pro_PreVenda = ' + Troca_Virgula_Ponto
      (FloatToStrf(Dados_Atuais.Preco_Venda, ffnumber, 12, 2)) + ',');
    SQL.Add('Pro_Estoque = ' + Troca_Virgula_Ponto
      (FloatToStrf(Dados_Atuais.Estoque_Atual, ffnumber, 12, 2)) + ',');
    SQL.Add('Pro_EstoqueMin = ' + Troca_Virgula_Ponto
      (FloatToStrf(Dados_Atuais.Estoque_Minimo, ffnumber, 12, 2)) + ',');
    SQL.Add('Pro_Cod_Grupo = ' + IntToStr(Dados_Atuais.Cod_Grupo) + ',');
    SQL.Add('Pro_Cod_SubGrupo = ' + IntToStr(Dados_Atuais.Cod_SubGrupo));
    SQL.Add('Where Pro_Codigo = ' + IntToStr(Dados_Atuais.Codigo));
    //ShowMessage('sql ' + SQL.Text);
    ExecSQL;
    Commit;
    Close;
  End;
End;

Function Retorna_Dados_Produto(Codigo: Integer): Dados_Produto;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From Produto');
    SQL.Add('Where Pro_Codigo = ' + IntToStr(Codigo));
    Open; // A SQL acima é executada
    FetchAll;
    if DM.qryAux['Pro_Codigo'] <> null then
      Result.Codigo := DM.qryAux['Pro_Codigo']
    Else
      Result.Codigo := -1;
    if DM.qryAux['Pro_Descricao'] <> null then
      Result.Descricao := DM.qryAux['Pro_Descricao']
    Else
      Result.Descricao := '';
    if DM.qryAux['Pro_CodBarras'] <> null then
      Result.Cod_Barras := DM.qryAux['Pro_CodBarras']
    Else
      Result.Cod_Barras := '';
    if DM.qryAux['Pro_PreCusto'] <> null then
      Result.Preco_Custo := DM.qryAux['Pro_PreCusto']
    Else
      Result.Preco_Custo := -1;
    if DM.qryAux['Pro_PreVenda'] <> null then
      Result.Preco_Venda := DM.qryAux['Pro_PreVenda']
    else
      Result.Preco_Venda := -1;
    if DM.qryAux['Pro_Estoque'] <> null then
      Result.Estoque_Atual := DM.qryAux['Pro_Estoque']
    else
      Result.Estoque_Atual := -1;
    if DM.qryAux['Pro_EstoqueMin'] <> null then
      Result.Estoque_Minimo := DM.qryAux['Pro_EstoqueMin']
    else
      Result.Estoque_Minimo := -1;
    if DM.qryAux['Pro_Cod_Grupo'] <> null then
      Result.Cod_Grupo := DM.qryAux['Pro_Cod_Grupo']
    else
      Result.Cod_Grupo := -1;
    if DM.qryAux['Pro_Cod_SubGrupo'] <> null then
      Result.Cod_SubGrupo := DM.qryAux['Pro_Cod_SubGrupo']
    else
      Result.Cod_SubGrupo := -1;
  End;
End;

Function Retorna_Produtos_Cadastrados(Campo, Termo, Ordenacao: String)
  : Produtos_Cadastrados;
{ Valores possíveis para "Campo"
  Codigo : Pro_Codigo
  Descricao : Pro_Descricao
  Codbarras : Pro_CodBarras
}
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From Produto');
    If LowerCase(Campo) = 'codigo' Then
    Begin
      SQL.Add('Where Pro_Codigo = ' + Termo);
    End;
    If LowerCase(Campo) = 'descricao' Then
    Begin
      SQL.Add('Where Pro_Descricao Like ' + QuotedStr(Termo + '%'));
    End;
    If LowerCase(Campo) = 'codbarras' Then
    Begin
      SQL.Add('Where Pro_CodBarras Like ' + QuotedStr(Termo + '%'));
    End;
    If Ordenacao = 'AZ' Then
      SQL.Add('Order By Pro_Descricao Asc');
    If Ordenacao = 'ZA' Then
      SQL.Add('Order By Pro_Descricao Desc');
    If Ordenacao = '09' Then
      SQL.Add('Order By Pro_Codigo Asc');
    If Ordenacao = '90' Then
      SQL.Add('Order By Pro_Codigo Desc');
    Open; // A SQL acima é executada
    FetchAll;
    SetLength(Result, 0);
    For I := 1 to DM.qryAux.RecordCount do
    Begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1].Codigo := DM.qryAux['Pro_Codigo'];
      Result[Length(Result) - 1].Descricao := DM.qryAux['Pro_Descricao'];
      Result[Length(Result) - 1].Cod_Barras := DM.qryAux['Pro_CodBarras'];
      Result[Length(Result) - 1].Preco_Custo := DM.qryAux['Pro_PreCusto'];
      Result[Length(Result) - 1].Preco_Venda := DM.qryAux['Pro_PreVenda'];
      Result[Length(Result) - 1].Estoque_Atual := DM.qryAux['Pro_Estoque'];
      Result[Length(Result) - 1].Estoque_Minimo := DM.qryAux['Pro_EstoqueMin'];
      Result[Length(Result) - 1].Cod_Grupo := DM.qryAux['Pro_Cod_Grupo'];
      Result[Length(Result) - 1].Cod_SubGrupo := DM.qryAux['Pro_Cod_SubGrupo'];
      DM.qryAux.Next;
    End;
    Close;
  End;
End;

Function Retorna_Proximo_Codigo_Produto: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Pro_Codigo');
    SQL.Add('From Produto');
    SQL.Add('Order By Pro_Codigo Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['Pro_Codigo'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

Function Tem_Prod_SubGrupo(Cod_SubGrupo: Integer): Prods_Com_SubGrupo;
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Pro_Codigo');
    SQL.Add('From Produto');
    SQL.Add('Where Pro_Cod_SubGrupo = ' + IntToStr(Cod_SubGrupo));
    Open;
    FetchAll;
    If DM.qryAux.RecordCount > 0 Then
    Begin
      SetLength(Result, DM.qryAux.RecordCount);
      for I := 1 to DM.qryAux.RecordCount do
      Begin
        Result[I - 1] := DM.qryAux['Pro_Codigo'];
        DM.qryAux.Next;
      End;
    End;
    Close;
  End;
End;

Procedure Atualiza_Produtos_Cascata(Vetor_Prods: Prods_Com_SubGrupo;
  Cod_Grupo: Integer);
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Update Produto Set Pro_Cod_Grupo = ' + IntToStr(Cod_Grupo));
    For I := 0 to Length(Vetor_Prods) - 1 do
      If I = 0 Then
        SQL.Add('Where Pro_Codigo = ' + IntToStr(Vetor_Prods[I]))
      Else
        SQL.Add('   Or Pro_Codigo = ' + IntToStr(Vetor_Prods[I]));
    ExecSQL;
    Commit;
    Close;
  End;
End;

Procedure Atualiza_Preco_Venda(Cod_Grupo, Cod_SubGrupo: Integer;
  Porcentagem: Real);
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Update Produto');
    SQL.Add('Set Pro_Prevenda = Pro_PreVenda * ' + Troca_Virgula_Ponto
      (FloatToStrf(((Porcentagem / 100) + 1), ffnumber, 12, 2)));
    SQL.Add('Where Pro_Cod_Grupo = ' + IntToStr(Cod_Grupo));
    If Cod_SubGrupo <> -1 Then
      SQL.Add('And Pro_Cod_SubGrupo = ' + IntToStr(Cod_SubGrupo));
    ExecSQL;
    Commit;
    Close;
  End;
End;

// Subrotinas de Grupo de Produtos
Procedure Grava_Dados_GrupoProd(Dados_Atuais: Dados_GrupoProd);
Begin
  With DM.qryGrupoProd Do
  Begin
    SQL.Clear;
    SQL.Add('Insert Into GrupoProd Values(');
    SQL.Add(IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Descricao));
    SQL.Add(')');
    ExecSQL;
    Commit;
    Close;
  End;
End;

Procedure Atualiza_Dados_GrupoProd(Dados_Atuais: Dados_GrupoProd);
Begin
  With DM.qryGrupoProd Do
  Begin
    SQL.Clear;
    SQL.Add('Update GrupoProd Set');
    SQL.Add('GruP_Codigo = ' + IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add('GruP_Descricao = ' + QuotedStr(Dados_Atuais.Descricao));
    SQL.Add('Where GruP_Codigo = ' + IntToStr(Dados_Atuais.Codigo));
    ExecSQL;
    Commit;
    Close;
  End;
End;

Function Retorna_Dados_GrupoProd(Codigo: Integer): Dados_GrupoProd;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From GrupoProd');
    SQL.Add('Where GruP_Codigo = ' + IntToStr(Codigo));
    Open; // A SQL acima é executada
    FetchAll;
    if DM.qryAux['GruP_Codigo'] <> null then
      Result.Codigo := DM.qryAux['GruP_Codigo']
    Else
      Result.Codigo := -1;
    if DM.qryAux['GruP_Descricao'] <> null then
      Result.Descricao := DM.qryAux['GruP_Descricao']
    Else
      Result.Descricao := '';
  End;
End;

Function Retorna_GrupoProds_Cadastrados(Campo, Termo, Ordenacao: String)
  : GrupoProds_Cadastrados;
{ Valores possíveis para "Campo"
  Codigo : GruP_Codigo
  Descricao : GruP_Descricao
}
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From GrupoProd');
    If LowerCase(Campo) = 'codigo' Then
    Begin
      SQL.Add('Where GruP_Codigo = ' + Termo);
    End;
    If LowerCase(Campo) = 'descricao' Then
    Begin
      SQL.Add('Where GruP_Descricao Like ' + QuotedStr(Termo + '%'));
    End;
    If Ordenacao = 'AZ' Then
      SQL.Add('Order By GruP_Descricao Asc');
    If Ordenacao = 'ZA' Then
      SQL.Add('Order By GruP_Descricao Desc');
    If Ordenacao = '09' Then
      SQL.Add('Order By GruP_Codigo Asc');
    If Ordenacao = '90' Then
      SQL.Add('Order By GruP_Codigo Desc');
    Open; // A SQL acima é executada
    FetchAll;
    SetLength(Result, 0);
    For I := 1 to DM.qryAux.RecordCount do
    Begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1].Codigo := DM.qryAux['GruP_Codigo'];
      Result[Length(Result) - 1].Descricao := DM.qryAux['GruP_Descricao'];
      DM.qryAux.Next;
    End;
    Close;
  End;
End;

Function Retorna_Proximo_Codigo_GrupoProd: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select GruP_Codigo');
    SQL.Add('From GrupoProd');
    SQL.Add('Order By GruP_Codigo Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['GruP_Codigo'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

Function Retorna_Codigo_Grupo(Descricao: String): Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select GruP_Codigo');
    SQL.Add('From GrupoProd');
    SQL.Add('Where Grup_Descricao = ' + QuotedStr(Descricao));
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := DM.qryAux['GruP_Codigo']
    Else
      Result := -1;
    Close;
  End;
End;

// Subrotinas de SubGrupo de Produtos
Procedure Grava_Dados_SubGrupoProd(Dados_Atuais: Dados_SubGrupoProd);
Begin
  With DM.qrySubGrupoProd Do
  Begin
    SQL.Clear;
    SQL.Add('Insert Into SubGrupoProd Values(');
    SQL.Add(IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add(QuotedStr(Dados_Atuais.Descricao) + ',');
    SQL.Add(IntToStr(Dados_Atuais.Cod_Grupo));
    SQL.Add(')');
    ExecSQL;
    Commit;
    Close;
  End;
End;

Procedure Atualiza_Dados_SubGrupoProd(Dados_Atuais: Dados_SubGrupoProd);
Begin
  With DM.qrySubGrupoProd Do
  Begin
    SQL.Clear;
    SQL.Add('Update SubGrupoProd Set');
    SQL.Add('SubGruP_Codigo = ' + IntToStr(Dados_Atuais.Codigo) + ',');
    SQL.Add('SubGruP_Descricao = ' + QuotedStr(Dados_Atuais.Descricao) + ',');
    SQL.Add('SubGruP_CodGrupo = ' + IntToStr(Dados_Atuais.Cod_Grupo));
    SQL.Add('Where SubGruP_Codigo = ' + IntToStr(Dados_Atuais.Codigo));
    ExecSQL;
    Commit;
    Close;
  End;
End;

Function Retorna_Dados_SubGrupoProd(Codigo: Integer): Dados_SubGrupoProd;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From SubGrupoProd');
    SQL.Add('Where SubGruP_Codigo = ' + IntToStr(Codigo));
    Open; // A SQL acima é executada
    FetchAll;
    if DM.qryAux['SubGruP_Codigo'] <> null then
      Result.Codigo := DM.qryAux['SubGruP_Codigo']
    Else
      Result.Codigo := -1;
    if DM.qryAux['SubGruP_Descricao'] <> null then
      Result.Descricao := DM.qryAux['SubGruP_Descricao']
    Else
      Result.Descricao := '';
    if DM.qryAux['SubGruP_CodGrupo'] <> null then
      Result.Cod_Grupo := DM.qryAux['SubGruP_CodGrupo']
    Else
      Result.Cod_Grupo := -1;
  End;
End;

Function Retorna_SubGrupoProds_Cadastrados(Campo, Termo, Ordenacao: String)
  : SubGrupoProds_Cadastrados;
{ Valores possíveis para "Campo"
  Codigo : SubGruP_Codigo
  Descricao : SubGruP_Descricao
  cod_grupo : SUBGRUP_CODGRUPO
}
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('From SubGrupoProd');
    If LowerCase(Campo) = 'codigo' Then
    Begin
      SQL.Add('Where SubGruP_Codigo = ' + Termo);
    End;
    If LowerCase(Campo) = 'descricao' Then
    Begin
      SQL.Add('Where SubGruP_Descricao Like ' + QuotedStr(Termo + '%'));
    End;
    If LowerCase(Campo) = 'cod_grupo' Then
    Begin
      SQL.Add('Where SUBGRUP_CODGRUPO = ' + Termo);
    End;
    If Ordenacao = 'AZ' Then
      SQL.Add('Order By SubGruP_Descricao Asc');
    If Ordenacao = 'ZA' Then
      SQL.Add('Order By SubGruP_Descricao Desc');
    If Ordenacao = '09' Then
      SQL.Add('Order By SubGruP_Codigo Asc');
    If Ordenacao = '90' Then
      SQL.Add('Order By SubGruP_Codigo Desc');
    Open; // A SQL acima é executada
    FetchAll;
    SetLength(Result, 0);
    For I := 1 to DM.qryAux.RecordCount do
    Begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1].Codigo := DM.qryAux['SubGruP_Codigo'];
      Result[Length(Result) - 1].Descricao := DM.qryAux['SubGruP_Descricao'];
      Result[Length(Result) - 1].Cod_Grupo := DM.qryAux['SubGruP_CodGrupo'];
      DM.qryAux.Next;
    End;
    Close;
  End;
End;

Function Retorna_Proximo_Codigo_SubGrupoProd: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select SubGruP_Codigo');
    SQL.Add('From SubGrupoProd');
    SQL.Add('Order By SubGruP_Codigo Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['SubGruP_Codigo'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

Function Retorna_Codigo_SubGrupo(Descricao: String): Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select SubGrup_Codigo');
    SQL.Add('From SubGrupoProd');
    SQL.Add('Where SubGrup_Descricao = ' + QuotedStr(Descricao));
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := DM.qryAux['SubGrup_Codigo']
    Else
      Result := -1;
    Close;
  End;
End;

// subrotinas de vendas
Function Retorna_Proximo_Codigo_Venda: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select Ven_Codigo');
    SQL.Add('From Venda');
    SQL.Add('Order By Ven_Codigo Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['Ven_Codigo'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

Function Retorna_Proximo_Codigo_ContReceber: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select CONTREC_COD');
    SQL.Add('from CONTASRECEBER');
    SQL.Add('Order By CONTREC_COD Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['CONTREC_COD'] + 1)
    Else
      Result := '1';
    Close;
  End;

End;

Function Retorna_Prox_Codigo_ProdVenda: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select ProdVen_Codigo');
    SQL.Add('From Prods_Venda');
    SQL.Add('Order By ProdVen_Codigo Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['ProdVen_Codigo'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

Procedure Grava_Dados_Venda(Cod_Venda: String; Data_Venda: TDate; Total: Real;
  Vet_Prod: Produtos_Venda);
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Insert Into Venda Values (');
    SQL.Add(Cod_Venda + ',');
    SQL.Add(QuotedStr(Transforma_Data(Data_Venda)) + ',');
    SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Total,ffnumber,12,2)));
    SQL.Add(')');
    ExecSQL;
    Commit;
    Close;
  End;
  for I := 0 to Length(Vet_Prod) - 1 do
  Begin
    With DM.qryProd_Venda Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('Insert Into Prods_Venda Values (');
      SQL.Add(Retorna_Prox_Codigo_ProdVenda + ','); // Cod da própria tabela
      SQL.Add(Cod_Venda + ',');
      SQL.Add(IntToStr(Vet_Prod[I].Codigo) + ',');
      SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Vet_Prod[I].Qtde,ffnumber,12,2)) + ',');
      SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Vet_Prod[I].Preco_Venda,ffnumber,12,2)));
      SQL.Add(')');
      ExecSQL;
      Commit;
      Close;
    End;
  End;

End;

Procedure Grava_Dados_ContasReceber(CR_Cod: String; Cod_Venda: String;
  NParc: Integer; Valor: Real; Status: Integer; Data_Venc: TDate;
  Data_Pagamento: TDate; Cli_cod: Integer);
Var
  I: Integer;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Insert Into CONTASRECEBER Values (');
    SQL.Add(CR_Cod + ',');
    SQL.Add(IntToStr(NParc) + ',');
    SQL.Add(Cod_Venda + ',');
    SQL.Add(Troca_Virgula_Ponto(FloatToStrf(Valor,ffnumber,12,2)) + ',');
    SQL.Add(IntToStr(Status) + ',');
    SQL.Add(QuotedStr(Transforma_Data(Data_Venc)) + ',');
    SQL.Add(QuotedStr(Transforma_Data(Data_Pagamento)) + ',');
    SQL.Add(IntToStr(Cli_cod));
    SQL.Add(')');
    ExecSQL;
    Commit;
    Close;
  End;
End;

Function Retorna_Entradas_Caixa(Data: TDate): Entradas_Caixa;
Var
  I: Integer;
Begin
  // Select CONTREC_DATAPAG, SUM(CONTREC_VALOR) from CONTASRECEBER WHERE CONTREC_STATUS=1 GROUP by CONTREC_DATAPAG ORDER BY CONTREC_DATAPAG ASC
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select CONTREC_DATAPAG as data, CONTREC_VALOR as valor');
    SQL.Add('from CONTASRECEBER WHERE CONTREC_STATUS=1');
    // SQL.Add('GROUP by CONTREC_DATAPAG ORDER BY CONTREC_DATAPAG ASC');
    SQL.Add(' AND CONTREC_DATAPAG=' + QuotedStr(Transforma_Data(Data)));
    //ShowMessage('sql ' + SQL.Text);
    Open; // A SQL acima é executada
    FetchAll;
    SetLength(Result, 0);
    For I := 1 to DM.qryAux.RecordCount do
    Begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1].Data := DM.qryAux['data'];
      Result[Length(Result) - 1].Total := DM.qryAux['valor'];
      DM.qryAux.Next;
    End;
    Close;
  End;
End;

Function Retorna_Contas_Receber(): Contas_Receber;
Var
  I: Integer;
Begin
  // Select CONTREC_DATAPAG, SUM(CONTREC_VALOR) from CONTASRECEBER WHERE CONTREC_STATUS=1 GROUP by CONTREC_DATAPAG ORDER BY CONTREC_DATAPAG ASC
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select CONTREC_COD AS COD, CONTREC_CODCLIENTE AS CLI, CONTREC_VALOR AS VALOR, CONTREC_DATAVENC AS VENC');
    SQL.Add(' from CONTASRECEBER WHERE  CONTREC_NPARC<>0 AND CONTREC_STATUS=0 ');
    SQL.Add('ORDER by CONTREC_DATAVENC ASC');
    //ShowMessage(sql.Text);
    Open; // A SQL acima é executada
    FetchAll;
    SetLength(Result, 0);
    For I := 1 to DM.qryAux.RecordCount do
    Begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1].Cod := DM.qryAux['cod'];
      Result[Length(Result) - 1].CliCod := DM.qryAux['cli'];
      Result[Length(Result) - 1].Valor := DM.qryAux['valor'];
      Result[Length(Result) - 1].Data_Vencimento := DM.qryAux['venc'];
      DM.qryAux.Next;
    End;
    Close;
  End;
End;

procedure pagarConta(Cod: string; Data: TDate);
begin
  //ShowMessage('entrou');
  With DM.qryContasReceber Do
  Begin
    //ShowMessage('aqui' + Cod);
    // Close;
    SQL.Clear;
    SQL.Add('UPDATE CONTASRECEBER');
    SQL.Add('SET CONTREC_STATUS = 1, CONTREC_DATAPAG = ' +
      QuotedStr(Transforma_Data(Data)));
    SQL.Add(' WHERE');
    SQL.Add(' CONTREC_COD = ' + Cod); // arumar data pagemto
    //ShowMessage('sql ' + SQL.Text);
    ExecSQL;
    Commit;
    Close;
  end;
  //ShowMessage('saiu');
end;

procedure arrumardata_parcelas(Cod_cr: string; n:integer);
begin
  //ShowMessage('entrou');
  With DM.qryContasReceber Do
  Begin

    SQL.Clear;
    SQL.Add('UPDATE CONTASRECEBER');
    SQL.Add('SET CONTREC_DATAVENC = DATEADD(MONTH,'+inttostr(n)+',CONTREC_DATAVENC)');
    SQL.Add(' WHERE');
    SQL.Add(' CONTREC_COD = ' + Cod_cr); // arumar data pagemto
    //ShowMessage('sql ' + SQL.Text);
    ExecSQL;
    Commit;
    Close;
  end;
  //ShowMessage('saiu');
end;

Function Retorna_Proximo_Codigo_CR: String;
Begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('Select CONTREC_COD');
    SQL.Add('From CONTASRECEBER');
    SQL.Add('Order By CONTREC_COD Desc');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      Result := IntToStr(DM.qryAux['CONTREC_COD'] + 1)
    Else
      Result := '1';
    Close;
  End;
End;

function Retorna_Total_VendaPorMes(Mes: String):Double;
begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(ven_total) from venda where ven_data like ');
    SQL.Add(QuotedStr('%_'+mes+'%'));
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      if DM.qryAux.FieldByName('sum').Value = null then
        Result := 0
      else
        Result := DM.qryAux['sum']
    Else
      Result := 0;
    Close;
  End;
end;

function Retorna_Dados_VendaPorMes(Mes: String):Double;
begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(ven_total) from venda where ven_data like ');
    SQL.Add(QuotedStr('%_'+mes+'%'));
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      if DM.qryAux.FieldByName('sum').Value = null then
        Result := 0
      else
        Result := DM.qryAux['sum']
    Else
      Result := 0;
    Close;
  End;
end;

function Retorna_Total_ProdPorMes01(Mes: String):StrArray;
var
  i: integer;
begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select pro_descricao from produto, venda, prods_venda where prodVen_Cod_produto = pro_codigo and prodVen_Cod_Venda = ven_Codigo and ven_data like ');
    SQL.Add(QuotedStr('%_'+mes+'%'));
    SQL.Add(' group by pro_descricao;');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      if DM.qryAux.FieldByName('pro_descricao').Value = null then
        Result := nil
      else
      begin
        FetchAll;
        SetLength(Result, 0);
        For I := 1 to DM.qryAux.RecordCount do
        Begin
          SetLength(Result, Length(Result) + 1);
          Result[Length(Result) - 1] := DM.qryAux['pro_descricao'];
          DM.qryAux.Next;
        End;
      end
    Else
      Result := nil;
    Close;
  End;
end;

function Retorna_Total_ProdPorMes02(Mes: String):DoubleArray;
var
  i: integer;
begin
  With DM.qryAux Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select sum(prodVen_qtde_produto*prodVen_preco_venda) from produto, venda, prods_venda where prodVen_Cod_produto = pro_codigo and prodVen_Cod_Venda = ven_Codigo and ven_data like ');
    SQL.Add(QuotedStr('%_'+mes+'%'));
    SQL.Add(' group by pro_descricao;');
    Open;
    If DM.qryAux.RecordCount <> 0 Then
      if DM.qryAux.FieldByName('sum').Value = null then
        Result := nil
      else
      begin
        FetchAll;
        SetLength(Result, 0);
        For I := 1 to DM.qryAux.RecordCount do
        Begin
          SetLength(Result, Length(Result) + 1);
          Result[Length(Result) - 1] := DM.qryAux['sum'];
          DM.qryAux.Next;
        End;
      end
    Else
      Result := nil;
    Close;
  End;
end;

end.
