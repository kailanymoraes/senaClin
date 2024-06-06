/*querys*/

SELECT * FROM paciente


/*exercicio 2: Inserir 6 pacientes de forma implícita, sendo 3 de Santos, 1 de Guarujá e 2 de São Vicente;*/
INSERT INTO paciente VALUES 
	('1','Givanna Coutinho', '12665985270', 'rua', 'profa yolanda conte', '220', '', '13996255761', 'São Vicente'),
	('2','Felipe Andrade', '12876985279','avenida','presidente wilson', '184', 'apartamento 25', '13984255761', 'São Vicente'),
	('3','Andre da Silva', '45876985268', 'rua', 'dona vitoria', '459', '', '13996080461', 'Guarujá'),
	('4','José Francisco', '90876385682', 'avenida', 'francisco glicerio', '825', 'apartamneto 60', '13984325780', 'Santos'),
	('5','Augusto Martins', '18706385682', 'rua', 'alfaia rodrigues', '308', 'casa 2', '13984473580', 'Santos'),
	('6','Mariana Ribeiro', '34706385682', 'rua', 'alfredo ximenes', '1020', '', '13985673580', 'Santos')
	
	
	SELECT * FROM dentista
	
/*exercicio 3: Inserir 4 dentistas de forma explícita, sendo 1 de cada especialidade; */	
INSERT INTO dentista (nome, cro, especialidade, telefone, celular) VALUES
	('Alexandre Abraão', 'SP-15672', 'Geral', '11996912725', '11996912557'),
	('Rita Jones', 'SP-37205', 'Ortodontia', '11998017625', '11986912730'),
	('Jorge Benj', 'RJ-59806', 'Implantodontia', '21389056913', '21389673513'),
	('Joaquim Machado', 'RJ-69082', 'Periodontia', '21289056952', '21329058552')
	
	
SELECT * FROM consulta

/*exercicio 4: Inserir 3 consultas, sendo 1 para o dentista que cuida de Ortodontia e 2 para o dentista
cuja especialidade é Geral. O tipo de todas elas será Avaliação. */
INSERT INTO consulta (dataconsulta, horaconsulta, tipoconsulta, iddentista, idpaciente, observacao) VALUES
	('24-10-08', '19:30', 'avaliação', '2', '5', ''),
	('24-06-11', '14:15', 'avaliação', '1', '1', 'muita dor no siso esquerdo'),
	('24-04-10', '17:00', 'avaliação', '2', '6', '')
	

/*exercicio 5: Atualizar todos os dados, exceto nome e cro, do dentista que cuida de implantodontia, mudando sua especialidade para Geral;*/
SELECT * FROM dentista;
 
UPDATE dentista SET telefone='32359864',celular='13996024853',especialidade='Geral' 
WHERE especialidade='Implantodontia';


/*exercicio 6: Atualizar a data e hora de uma consulta marcada com um dentista cuja especialidade é Geral*/
SELECT * FROM consulta 

UPDATE consulta SET dataconsulta='24-10-12', horaconsulta='18:30' 
WHERE iddentista='1'


/*exercicio 7: Atualizar a consulta do dentista de especialidade ortodontia, mudando o tipo de consulta para Tratamento e inserindo 
uma observação do dentista com o seguinte texto: “Tratamento será realizado em 10 consultas. 
Prioridade: Moderada. Remédio aplicado: Ponstan, caso sinta dores” */
UPDATE consulta SET tipoconsulta='tratamento', observacao='Tratamento será realizado em 10 consultas. 
Prioridade: Moderada. Remédio aplicado: Ponstan, caso sinta dores' 
WHERE idpaciente='6'

/*exercicio 8: Selecionar nome e telefone de todo os pacientes que residem em Santos, em ordem alfabética; */
 SELECT nome, telefone FROM paciente 
 WHERE cidade='Santos' ORDER BY nome ASC 

/*exercicio 9: Selecionar o nome dos dentistas, a datas da consulta, o nome do paciente e seu telefone, APENAS dos dentistas que possuem consultas;*/
 SELECT dataconsulta, dentista.nome, paciente.nome, paciente.telefone FROM consulta 
 INNER JOIN dentista ON consulta.idDentista=dentista.idDentista
 INNER JOIN paciente ON consulta.idPaciente=paciente.idPaciente

/*exercicio 10: Selecionar o nome do dentista, a data da consulta e o tipo da consulta, MESMO quando os dentistas não possuam consultas;*/
 SELECT dentista.nome,consulta.dataConsulta,consulta.tipoConsulta FROM dentista
 LEFT JOIN consulta
 ON consulta.idDentista = dentista.idDentista

/*exercicio 11: Criar uma query que exiba a quantidade de dentistas que a clínica possui, agrupando-os por especialidade, 
ordenando pelo nome da especialidade de A-Z. Para isto, você utilizará o comando group by do sql.*/
 SELECT COUNT(iddentista) AS 'quant. dentistas', especialidade FROM dentista
 GROUP BY especialidade ORDER BY especialidade ASC 

/*exercicio 12: Criar uma query que mostre a quantidade de consultas que a clínica possui em determinado período do ano. 
Escolher um mês que retorne ao menos uma consulta, e incluir o mês como filtro. */
 SELECT COUNT(Dataconsulta) AS 'consultas de novembro' FROM consulta
 WHERE MONTH(dataconsulta)='10'  


/*exercicio 13: Criar uma query que traga todos os tipos de consulta, agrupadas pela quantidade*/
 SELECT COUNT(tipoconsulta) AS 'quant consulta',tipoconsulta FROM consulta GROUP BY tipoconsulta


/*exercicio 14: Criar uma query que traga o número de pacientes que a clínica possui.*/
SELECT COUNT(nome) AS 'quant paciente' FROM paciente





