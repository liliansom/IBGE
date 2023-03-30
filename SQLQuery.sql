-- Abrindo tabela e analisando dados:
SELECT 
	*
FROM 
	IBGE


-- Altera��o dos nomes das colunas:
EXEC sp_rename 'IBGE.column1', 'UF', 'COLUMN';
EXEC sp_rename 'IBGE.column2', 'C�digo', 'COLUMN';
EXEC sp_rename 'IBGE.column3', 'Gent�lico', 'COLUMN';
EXEC sp_rename 'IBGE.column4', 'Governador_2023', 'COLUMN';
EXEC sp_rename 'IBGE.column5', 'Capital_2010', 'COLUMN';
EXEC sp_rename 'IBGE.column6', '�reaTerritorial_2022', 'COLUMN';
EXEC sp_rename 'IBGE.column7', 'Popula��oEstimada_2021', 'COLUMN';
EXEC sp_rename 'IBGE.column8', 'DensidadeDemogr�fica_2010', 'COLUMN';
EXEC sp_rename 'IBGE.column9', 'Matr�culas_EnsinoFundamental', 'COLUMN';
EXEC sp_rename 'IBGE.column10', 'IDH_2010', 'COLUMN';
EXEC sp_rename 'IBGE.column11', 'ReceitasRealizadas_2017', 'COLUMN';
EXEC sp_rename 'IBGE.column12', 'Despesas Empenhadas_2017', 'COLUMN';
EXEC sp_rename 'IBGE.column13', 'RendimentoMensalDomiciliar_PerCapita_2022', 'COLUMN';
EXEC sp_rename 'IBGE.column14', 'TotalVe�culos_2022', 'COLUMN';


-- Retirando a primeira linha com nomes das colunas:
DELETE FROM 
	IBGE 
WHERE 
	UF = (SELECT TOP 1 UF FROM IBGE ORDER BY UF DESC);


	-- Retirando a primeira linha com notas dos dados:
DELETE FROM 
	IBGE 
WHERE 
	UF = (SELECT TOP 1 UF FROM IBGE ORDER BY UF ASC);


-- Retirando a coluna 15 sem informa��o:
ALTER TABLE IBGE
DROP COLUMN column15;


-- Renomeando UFs com acento:
UPDATE 
	IBGE 
SET 
	UF = 'Amap�' 
WHERE 
	UF = 'Amap&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Cear�' 
WHERE 
	UF = 'Cear&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Esp�rito Santo' 
WHERE 
	UF = 'Esp&iacute;rito Santo'

UPDATE 
	IBGE 
SET 
	UF = 'Goi�s' 
WHERE 
	UF = 'Goi&aacute;s'

UPDATE 
	IBGE 
SET 
	UF = 'Maranh�o' 
WHERE 
	UF = 'Maranh&atilde;o'

UPDATE 
	IBGE 
SET 
	UF = 'Par�' 
WHERE 
	UF = 'Par&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Para�ba' 
WHERE 
	UF = 'Para&iacute;ba'

UPDATE 
	IBGE 
SET 
	UF = 'Paran�'
WHERE 
	UF = 'Paran&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Piau�' 
WHERE 
	UF = 'Piau&iacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Rond�nia' 
WHERE
	UF = 'Rond&ocirc;nia'

UPDATE 
	IBGE 
SET 
	UF = 'S�o Paulo' 
WHERE 
	UF = 'S&atilde;o Paulo'


-- Renomeando Gent�licos com acento:
UPDATE 
	IBGE 
SET 
	Gent�lico = 'ga�cho ou sul-rio-grandense' 
WHERE 
	Gent�lico = 'ga&uacute;cho ou sul-rio-grandense'

UPDATE 
	IBGE 
SET 
	Gent�lico = 'capixaba ou esp�rito-santense' 
WHERE 
	Gent�lico = 'capixaba ou esp&iacute;rito-santense'


-- Renomeando Governador com acento:
UPDATE 
	IBGE 
SET 
	Governador_2023 = 'CL�CIO LU�S VILHENA VIEIRA' 
WHERE 
	Governador_2023 = 'CL&Eacute;CIO LU&Iacute;S VILHENA VIEIRA'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'JER�NIMO RODRIGUES SOUZA' 
WHERE 
	Governador_2023 = 'JER&Ocirc;NIMO RODRIGUES SOUZA'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'CL�UDIO BOMFIM DE CASTRO E SILVA' 
WHERE 
	Governador_2023 = 'CL&Aacute;UDIO BOMFIM DE CASTRO E SILVA'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'JO�O AZEVEDO LINS FILHO' 
WHERE 
	Governador_2023 = 'JO&Atilde;O AZEVEDO LINS FILHO'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'CARLOS ORLEANS BRAND�O J�NIOR
' 
WHERE 
	Governador_2023 = 'CARLOS ORLEANS BRAND&Atilde;O J&Uacute;NIOR'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'MARCOS JOS� ROCHA DOS SANTOS' 
WHERE 
	Governador_2023 = 'MARCOS JOS&Eacute; ROCHA DOS SANTOS'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'JOS� RENATO CASAGRANDE' 
WHERE 
	Governador_2023 = 'JOS&Eacute; RENATO CASAGRANDE'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'IBANEIS ROCHA BARROS J�NIOR' 
WHERE 
	Governador_2023 = 'IBANEIS ROCHA BARROS J&Uacute;NIOR'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'F�BIO CRUZ MITIDIERI' 
WHERE 
	Governador_2023 = 'F&Aacute;BIO CRUZ MITIDIERI'


-- Renomeando Capitais com acento:
UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Macei�' 
WHERE 
	Capital_2010 = 'Macei&oacute;'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Macap�' 
WHERE 
	Capital_2010 = 'Macap&aacute;'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Bras�lia' 
WHERE 
	Capital_2010 = 'Bras&iacute;lia'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Vit�ria' 
WHERE 
	Capital_2010 = 'Vit&oacute;ria'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Goi�nia' 
WHERE 
	Capital_2010 = 'Goi&acirc;nia'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'S�o Lu�s' 
WHERE 
	Capital_2010 = 'S&atilde;o Lu&iacute;s'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Cuiab�' 
WHERE 
	Capital_2010 = 'Cuiab&aacute;'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Bel�m' 
WHERE 
	Capital_2010 = 'Bel&eacute;m'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Jo�o Pessoa' 
WHERE 
	Capital_2010 = 'Jo&atilde;o Pessoa'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Florian�polis' 
WHERE 
	Capital_2010 = 'Florian&oacute;polis'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'S�o Paulo' 
WHERE 
	Capital_2010 = 'S&atilde;o Paulo'


