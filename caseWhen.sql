/* ------------------------ FUNCTION (DECLARE) ------------------------ */

-- Padrao(1)
delimiter $$
create function
begin

	-- Declaracao de variaveis locais
	declare

	/* PROCEDIMENTO */
	
	-- Retorno de valor:
	return(/* Valor */)
	
end $$
delimiter ;

/* ------------------------ Function(1) ------------------------ */
delimiter $$
create function fn2_calcula_imposto( salario decimal(8,2) ) returns decimal(8,2)
begin

	-- Variaveis locais
    declare imposto decimal(8,2);
    
    -- Estrutura de decisao: Case
    case
		when( salario < 1000.00 )
        then
			set imposto = salario * 0;

		when( salario < 2000.00 )
        then
			set imposto = salario * 0.15;

		when( salario < 3000.00 )
        then
			set imposto = salario * 0.22;

		else
			set imposto = salario * 0.27;

    end case;
        
	-- Retorno
	return( imposto );

end $$
delimiter ;

-- Chamada de funcao:
select fn2_calcula_imposto(10.00);
select fn2_calcula_imposto(1000.00);
select fn2_calcula_imposto(2000.00);
select fn2_calcula_imposto(3000.00);
