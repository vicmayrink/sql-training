-- Atualizar o horário de uma consulta qualquer
UPDATE consultas
SET data_hora_consulta = '2024-07-31 15:00'
WHERE nome_paciente = 'Maria Silva'
AND nome_medico = 'Dra. Costa'
AND data_hora_consulta = '2024-07-18 11:00:00';