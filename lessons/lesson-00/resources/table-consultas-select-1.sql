-- Consultar a agenda da Dra. Costa
SELECT
    data_hora_consulta,
    nome_paciente
FROM consultas
WHERE nome_medico = 'Dra. Costa'
ORDER BY data_hora_consulta;
