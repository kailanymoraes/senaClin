USE db_senaClin

CREATE TABLE paciente 
(idPaciente INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nome VARCHAR(50) NOT NULL , 
cpf VARCHAR(11) NOT NULL UNIQUE, tipoLogradouro VARCHAR(20) NOT NULL, nomeLogradouro VARCHAR(30) NOT NULL,
numero CHAR(6) NOT NULL, complemento VARCHAR(20), telefone VARCHAR(11) NOT NULL);

CREATE TABLE consulta 
(idConsulta INT PRIMARY KEY NOT NULL AUTO_INCREMENT, dataConsulta DATE NOT NULL,
 horaConsulta TIME NOT NULL, tipoConsulta VARCHAR(20) NOT NULL, observacao VARCHAR(30),
 CONSTRAINT fk_idPaciente FOREIGN KEY (idPaciente) REFERENCES paciente(idPaciente),
 CONSTRAINT fk_idDentista FOREIGN KEY (idDentista) REFERENCES dentista(idDentista))

CREATE TABLE Dentista 
(idDentista INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nomeDentista VARCHAR(50) NOT NULL,
cro VARCHAR(8) NOT NULL UNIQUE, )
