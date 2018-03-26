unit Unit_Persistencia;

interface

uses Unit_DM, System.SysUtils, System.StrUtils, VCL.Dialogs;

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
                 End;

  Clientes_Cadastrados = Array of Dados_Cliente;
  Produtos_Cadastrados = Array of Dados_Produto;

  Procedure Grava_Dados_Empresa(Dados_Atuais:Dados_Empresa);
  Function Retorna_Dados_Empresa : Dados_Empresa;
  //subrotinas Cliente
  Procedure Grava_Dados_Cliente(Dados_Atuais:Dados_Cliente);
  Function Retorna_Dados_Cliente(Codigo : Integer) : Dados_Cliente;
  Function Retorna_Clientes_Cadastrados : Clientes_Cadastrados;
  //subrotinas Produto
  Procedure Grava_Dados_Produto(Dados_Atuais:Dados_Produto);
  Function Retorna_Dados_Produto(Codigo : Integer) : Dados_Produto;
  Function Retorna_Produtos_Cadastrados : Produtos_Cadastrados;

implementation

Procedure Grava_Dados_Empresa(Dados_Atuais:Dados_Empresa);
  Begin
   // nao deve acessar componentes de tela
   // a ideia � que seja independente
  End;

Function Retorna_Dados_Empresa : Dados_Empresa;
  Begin
   // nao deve acessar componentes de tela
   // a ideia � que seja independente
  End;

Procedure Grava_Dados_Cliente(Dados_Atuais:Dados_Cliente);
  Begin
   // nao deve acessar componentes de tela
   // a ideia � que seja independente
    With DM.qryCliente DO
    begin
      SQL.Clear;
      SQL.Add('Insert Into Cliente Values (');
      SQL.Add(IntToStr(Dados_Atuais.Codigo)+',');
      SQL.Add(QuotedStr(Dados_Atuais.Nome));
      SQL.Add(QuotedStr(Dados_Atuais.Endereco));
      SQL.Add(QuotedStr(Dados_Atuais.CPF));
      SQL.Add(QuotedStr(Dados_Atuais.Telefone));
      SQL.Add(QuotedStr(Dados_Atuais.Celular));
      SQL.Add(QuotedStr(Dados_Atuais.Time));
      SQL.Add(QuotedStr(Dados_Atuais.Religiao));
      SQL.Add(IntToStr(Dados_Atuais.Sexo));
      SQL.Add(')');
      ShowMessage(SQL.Text);
      ExecSQL;

    end;
  End;

Function Retorna_Dados_Cliente(Codigo : Integer) : Dados_Cliente;
  Begin
   // nao deve acessar componentes de tela
   // a ideia � que seja independente
  End;

Function Retorna_Clientes_Cadastrados : Clientes_Cadastrados;
  Begin
    //
  End;

Procedure Grava_Dados_Produto(Dados_Atuais:Dados_Produto);
  Begin
   // nao deve acessar componentes de tela
   // a ideia � que seja independente
  End;

Function Retorna_Dados_Produto(Codigo : Integer) : Dados_Produto;
  Begin
   // nao deve acessar componentes de tela
   // a ideia � que seja independente
  End;

Function Retorna_Produtos_Cadastrados : Produtos_Cadastrados;
  Begin
    //
  End;


end.
