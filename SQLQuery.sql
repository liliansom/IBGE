-- Abrindo tabela e analisando dados:
SELECT 
	*
FROM 
	IBGE


-- Alteração dos nomes das colunas:
EXEC sp_rename 'IBGE.column1', 'UF', 'COLUMN';
EXEC sp_rename 'IBGE.column2', 'Código', 'COLUMN';
EXEC sp_rename 'IBGE.column3', 'Gentílico', 'COLUMN';
EXEC sp_rename 'IBGE.column4', 'Governador_2023', 'COLUMN';
EXEC sp_rename 'IBGE.column5', 'Capital_2010', 'COLUMN';
EXEC sp_rename 'IBGE.column6', 'ÁreaTerritorial_2022', 'COLUMN';
EXEC sp_rename 'IBGE.column7', 'PopulaçãoEstimada_2021', 'COLUMN';
EXEC sp_rename 'IBGE.column8', 'DensidadeDemográfica_2010', 'COLUMN';
EXEC sp_rename 'IBGE.column9', 'Matrículas_EnsinoFundamental', 'COLUMN';
EXEC sp_rename 'IBGE.column10', 'IDH_2010', 'COLUMN';
EXEC sp_rename 'IBGE.column11', 'ReceitasRealizadas_2017', 'COLUMN';
EXEC sp_rename 'IBGE.column12', 'Despesas Empenhadas_2017', 'COLUMN';
EXEC sp_rename 'IBGE.column13', 'RendimentoMensalDomiciliar_PerCapita_2022', 'COLUMN';
EXEC sp_rename 'IBGE.column14', 'TotalVeículos_2022', 'COLUMN';


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


-- Retirando a coluna 15 sem informação:
ALTER TABLE IBGE
DROP COLUMN column15;


-- Renomeando UFs com acento:
UPDATE 
	IBGE 
SET 
	UF = 'Amapá' 
WHERE 
	UF = 'Amap&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Ceará' 
WHERE 
	UF = 'Cear&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Espírito Santo' 
WHERE 
	UF = 'Esp&iacute;rito Santo'

UPDATE 
	IBGE 
SET 
	UF = 'Goiás' 
WHERE 
	UF = 'Goi&aacute;s'

UPDATE 
	IBGE 
SET 
	UF = 'Maranhão' 
WHERE 
	UF = 'Maranh&atilde;o'

UPDATE 
	IBGE 
SET 
	UF = 'Pará' 
WHERE 
	UF = 'Par&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Paraíba' 
WHERE 
	UF = 'Para&iacute;ba'

UPDATE 
	IBGE 
SET 
	UF = 'Paraná'
WHERE 
	UF = 'Paran&aacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Piauí' 
WHERE 
	UF = 'Piau&iacute;'

UPDATE 
	IBGE 
SET 
	UF = 'Rondônia' 
WHERE
	UF = 'Rond&ocirc;nia'

UPDATE 
	IBGE 
SET 
	UF = 'São Paulo' 
WHERE 
	UF = 'S&atilde;o Paulo'


-- Renomeando Gentílicos com acento:
UPDATE 
	IBGE 
SET 
	Gentílico = 'gaúcho ou sul-rio-grandense' 
WHERE 
	Gentílico = 'ga&uacute;cho ou sul-rio-grandense'

UPDATE 
	IBGE 
SET 
	Gentílico = 'capixaba ou espírito-santense' 
WHERE 
	Gentílico = 'capixaba ou esp&iacute;rito-santense'


-- Renomeando Governador com acento:
UPDATE 
	IBGE 
SET 
	Governador_2023 = 'CLÉCIO LUÍS VILHENA VIEIRA' 
WHERE 
	Governador_2023 = 'CL&Eacute;CIO LU&Iacute;S VILHENA VIEIRA'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'JERÔNIMO RODRIGUES SOUZA' 
WHERE 
	Governador_2023 = 'JER&Ocirc;NIMO RODRIGUES SOUZA'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'CLÁUDIO BOMFIM DE CASTRO E SILVA' 
WHERE 
	Governador_2023 = 'CL&Aacute;UDIO BOMFIM DE CASTRO E SILVA'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'JOÃO AZEVEDO LINS FILHO' 
WHERE 
	Governador_2023 = 'JO&Atilde;O AZEVEDO LINS FILHO'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'CARLOS ORLEANS BRANDÃO JÚNIOR
' 
WHERE 
	Governador_2023 = 'CARLOS ORLEANS BRAND&Atilde;O J&Uacute;NIOR'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'MARCOS JOSÉ ROCHA DOS SANTOS' 
WHERE 
	Governador_2023 = 'MARCOS JOS&Eacute; ROCHA DOS SANTOS'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'JOSÉ RENATO CASAGRANDE' 
WHERE 
	Governador_2023 = 'JOS&Eacute; RENATO CASAGRANDE'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'IBANEIS ROCHA BARROS JÚNIOR' 
WHERE 
	Governador_2023 = 'IBANEIS ROCHA BARROS J&Uacute;NIOR'

UPDATE 
	IBGE 
SET 
	Governador_2023 = 'FÁBIO CRUZ MITIDIERI' 
WHERE 
	Governador_2023 = 'F&Aacute;BIO CRUZ MITIDIERI'


-- Renomeando Capitais com acento:
UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Maceió' 
WHERE 
	Capital_2010 = 'Macei&oacute;'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Macapá' 
WHERE 
	Capital_2010 = 'Macap&aacute;'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Brasília' 
WHERE 
	Capital_2010 = 'Bras&iacute;lia'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Vitória' 
WHERE 
	Capital_2010 = 'Vit&oacute;ria'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Goiânia' 
WHERE 
	Capital_2010 = 'Goi&acirc;nia'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'São Luís' 
WHERE 
	Capital_2010 = 'S&atilde;o Lu&iacute;s'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Cuiabá' 
WHERE 
	Capital_2010 = 'Cuiab&aacute;'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Belém' 
WHERE 
	Capital_2010 = 'Bel&eacute;m'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'João Pessoa' 
WHERE 
	Capital_2010 = 'Jo&atilde;o Pessoa'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'Florianópolis' 
WHERE 
	Capital_2010 = 'Florian&oacute;polis'

UPDATE 
	IBGE 
SET 
	Capital_2010 = 'São Paulo' 
WHERE 
	Capital_2010 = 'S&atilde;o Paulo'


