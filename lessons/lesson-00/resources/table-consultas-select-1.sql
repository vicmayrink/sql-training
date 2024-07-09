-- Consultar a agenda da Dra. Costa
SELECT
    nome_paciente,
    data_hora_consulta
FROM consultas
WHERE nome_medico = 'Dra. Costa'
ORDER BY data_hora_consulta;
