USE db_senaClin

CREATE TABLE paciente 
(idPaciente INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nome VARCHAR(50) NOT NULL , 
cpf VARCHAR(11) NOT NULL UNIQUE, tipoLogradouro VARCHAR(20) NOT NULL, nomeLogradouro VARCHAR(30) NOT NULL,
numero CHAR(6) NOT NULL, complemento VARCHAR(20), telefone VARCHAR(11) NOT NULL);


CREATE TABLE dentista(
idDentista INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(150) NOT NULL,
cro VARCHAR(8) NOT NULL UNIQUE,
especialidade VARCHAR(100) DEFAULT 'Geral' CHECK (especialidade='Ortodontia' OR 'Geral' OR 
'Periodontia' OR 'Implantodontia'),
telefone VARCHAR(11) NOT NULL,
celular VARCHAR(11) NOT NULL,
CONSTRAINT PRIMARY KEY(idDentista)
);


CREATE TABLE consulta(
idConsulta INT AUTO_INCREMENT NOT NULL,
dataConsulta DATE NOT NULL,
horaConsulta TIME NOT NULL,
tipoConsulta VARCHAR(100) NOT NULL,
idPaciente INT,
idDentista INT,
observacao VARCHAR(150),
CONSTRAINT PRIMARY KEY(idConsulta),
CONSTRAINT fk_consulta_paciente FOREIGN KEY (idPaciente) REFERENCES paciente(idPaciente),
CONSTRAINT fk_consulta_dentista FOREIGN KEY (idDentista) REFERENCES dentista(idDentista)
);


/*exercicio 1: Adicionar à tabela Paciente um novo atributo, chamado Cidade;*/
ALTER TABLE paciente ADD COLUMN cidade VARCHAR(30) NOT NULL 

ALTER TABLE dentista DROP COLUMN especialidade;
ALTER TABLE dentista ADD COLUMN especialidade VARCHAR(100) DEFAULT 'Geral' 
CHECK (especialidade='Ortodontia' OR especialidade='Geral' OR 
especialidade='Periodontia' OR especialidade='Implantodontia');
