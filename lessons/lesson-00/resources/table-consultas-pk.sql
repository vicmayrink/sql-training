-- Criação da tabela - Exemplo
CREATE TABLE consultas (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_paciente VARCHAR(100),
    data_nasc_paciente DATE,
    nome_medico VARCHAR(100),
    especialidade_medico VARCHAR(50),
    data_hora_consulta TIMESTAMP
);