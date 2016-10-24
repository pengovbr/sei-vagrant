USE mysql;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;

USE sip;
update orgao set sigla='ABC', descricao='ORGAO ABC' where id_orgao=0;
update sistema set pagina_inicial='http://localhost/sip' where sigla='SIP';
update sistema set pagina_inicial='http://localhost/sei/inicializar.php', web_service='http://localhost/sei/controlador_ws.php?servico=sip' where sigla='SEI';
update orgao set sin_autenticar='N' where id_orgao=0;

USE sei;
update orgao set sigla='ABC', descricao='ORGAO ABC' where id_orgao=0;
delete from auditoria_protocolo;

