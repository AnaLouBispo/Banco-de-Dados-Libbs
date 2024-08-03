-- Comentario
-- Criar novo arquivo --> ctrl+ t
-- ctrl+shift+enter  --> executa o cod
SHOW GRANTS FOR 'root'@'localhost';

-- Criar novo usuario com senha 123
CREATE USER 'novosusuario'@'localhost'
IDENTIFIED BY 'senha123';
-- Dando permissões para o novo usuario
GRANT 
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
TO 'novosusuario'@'localhost';
SHOW GRANTS FOR 'novosusuario'@'localhost';
-- Removendo Permissões 
REVOKE
	SELECT,
	INSERT,
	UPDATE
ON sys.sys_config
FROM 'novosusuario'@'localhost';
-- Apagando Usuario
DROP USER 'novosusuario'@'localhost';