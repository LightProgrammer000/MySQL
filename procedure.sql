-------------------------------- Procedure (1) --------------------------------
delimiter $$
create procedure pr_numero_primo( num int )
begin
	-- Variaveis locais
    declare i int default 0;
    declare quant_zero int default 0;

    -- Estrutura de decisao
    if( num = 1 )
    then
		select concat('Numero: ', num) as 'Divisor universal';

    elseif( num <= 0 )
    then
		select concat('Numero: ', num) as 'Invalido';

    else
		-- Estrutura de repeticao: Bloco
		while( i <= num )
		do
			-- Incremento no contador
			set i = i + 1;

			-- Estrutura de decisao
			if( num mod i = 0 )
			then
				-- Contador de divisoes por zero
				set quant_zero = quant_zero + 1;
			end if;

			-- Estrutura de decisao
			if( quant_zero > 3 )
			then    
				-- Break
				set i = num + 1;

			end if;
		end while;

		-- Estrutura de decisao
		if( quant_zero = 2 )
		then
			-- Exibicao de dados
            select concat('Numero: ', num) as 'Primo';
        
        else
			-- Exibicao de dados
            select concat('Numero: ', num ) as 'Nao Primo';        
        end if;
        
	end if;

end $$
delimiter ;

-- Chamada de procedimento
call pr_numero_primo(0);
call pr_numero_primo(1);
call pr_numero_primo(2);
call pr_numero_primo(10);
