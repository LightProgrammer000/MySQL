/* ------------------------ FUNCTION (DECLARE) ------------------------ */

-- Padrao(1)
delimiter $$
create function fn_multiplicacao( i int, j int ) returns int
begin

	-- Declaracao de variaveis locais
	declare
	
	/* PROCEDIMENTO */
	
	return (/* Valor */);

end $$
delimiter ;

/* ------------------------ Function(1) ------------------------ */
delimiter $$
create function fn1_desconto_percentual( cod int, taxa decimal(10,2) ) returns decimal(10,2)
begin

	-- Declaracao de variaveis
    declare preco decimal(10,2);

    -- Selecionando e atribuindo na variavel 'preco'
    select
		tl.preco_livro
	from
		tbl_livro tl
	where
		tl.id_livro = cod
	into
		preco;

	-- Retornado o valor descontado
	return ( preco * ( 1 - taxa / 100 ) );

end $$
delimiter ;

-- Exibicao de valor:
select tl.preco_livro from tbl_livro tl where tl.id_livro = 1;

-- Chamada de Funcao:
select fn1_desconto_percentual(1,10);

/* ------------------------ Function(2) ------------------------ */
delimiter $$
create function fn2_aumento_percentual( cod int, taxa decimal(10,2) ) returns decimal(10,2)
begin
	
    -- Declaracao de variaveis
    declare preco decimal(10,2);
    
	-- Selecionando e atribuindo na variavel 'preco'
    select
		tl.preco_livro
	from
		tbl_livro tl
	where
		tl.id_livro = cod
	into
		preco;
	
    -- Retornado o valor descontado
    return( preco * ( 1 + taxa / 100 ) );

end $$
delimiter ;

-- Exibicao de valor:
select tl.preco_livro from tbl_livro tl where tl.id_livro = 1;

-- Chamada de Funcao:
select fn2_aumento_percentual(1,10);
