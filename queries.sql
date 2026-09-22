-- Usada na página inicial exibe um resumo de todos os conteúdos
SELECT 
	c_id,
	c_title,
	substr(c_text, 1, 50) || '...' as c_resume
FROM content 
	WHERE c_status = 'on'
	ORDER BY c_created_at DESC;
	
-- Usada na página view exibe um único conteúdo identificado pelo ID
SELECT 
	c_id, c_created_at, c_title, c_text,
	u_id, u_name, u_photo
FROM content
INNER JOIN fbuser ON c_owner = u_id
	WHERE c_status = 'on'
	AND c_id = 4;
	