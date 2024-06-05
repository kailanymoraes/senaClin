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
	
/*exercico 3: Inserir 4 dentistas de forma explícita, sendo 1 de cada especialidade; */	
INSERT INTO dentista (nome, cro, especialidade, telefone, celular) VALUES
	('Alexandre Abraão', 'SP-15672', 'Geral', '11996912725', '11996912557'),
	('Rita Jones', 'SP-37205', 'Ortodontia', '11998017625', '11986912730'),
	('Jorge Benj', 'RJ-59806', 'Implantodontia', '21389056913', '21389673513'),
	('Joaquim Machado', 'RJ-69082', 'Periodontia', '21289056952', '21329058552')
	
