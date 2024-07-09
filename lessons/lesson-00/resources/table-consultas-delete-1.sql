-- Deletar um registro qualquer (por exemplo, a consulta do João com a Dra. Lima)
DELETE FROM consultas
WHERE nome_paciente = 'João Santos'
AND nome_medico = 'Dra. Lima'
AND data_hora_consulta = '2024-08-09 08:00';
