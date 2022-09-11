/* ------------------------ FUNCTION (DECLARE) ------------------------ */

-- Padrao(1)
delimiter $$
create function
begin

	-- Declaracao de variaveis locais
	declare

	/* PROCEDIMENTO */
	
	return (/* Valor */);
	
end $$
delimiter ;

/* ------------------------ Function(1) ------------------------ */
delimiter $$
create function fn1_calcula_imposto( salario decimal(8,2) ) returns decimal(8,2)
begin

	-- Declaracao de variaveis
    declare imposto decimal(8,2);
   
	-- Estrutura de decisao
    if( salario < 1000.00 )
    then
		set imposto = 0.00;
	
    elseif( salario < 2000.00 )
    then
		set imposto = salario * 0.15;
	
	elseif( salario < 3000.00 )
    then
		set imposto = salario * 0.22;
        
	else
		set imposto = salario * 0.27;
	
    end if;
    
	-- Retorno de variavel
    return( imposto );

end $$
delimiter ;

-- Chamada de Funcao:
select fn1_calcula_imposto(100.00);
select fn1_calcula_imposto(1000.00);
select fn1_calcula_imposto(2000.00);
select fn1_calcula_imposto(3000.00);
select fn1_calcula_imposto(4000.00);
