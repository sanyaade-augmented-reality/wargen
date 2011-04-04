#ARQUIVO
arquivoCheckByNomeExtensao=select count(*) from tab_arquivo where nome_arquivo = ? and extensao_arquivo = ?
arquivoInsert=insert into tab_arquivo(nome_arquivo, extensao_arquivo, nome_apresentacao) values (?, ?, ?)
arquivoDeleteByNomeExtensao=delete from tab_arquivo where nome_arquivo = ? and extensao_arquivo = ?
loadArquivoById=select nome_arquivo, extensao_arquivo, nome_apresentacao from tab_arquivo where id = ?
loadArquivoIdByNomeExtensao=select id from tab_arquivo where nome_arquivo = ? and extensao_arquivo = ?
loadArquivoByNomeExtensao=select id, nome_apresentacao from tab_arquivo where nome_arquivo = ? and extensao_arquivo = ?

#OBJETO
objetoInsert=insert into tab_objeto(usuario, modelo, marcador, publico, descricao) values (?, ?, ?, ?, ?)
objetoDeleteByUser=delete from tab_objeto where usuario = ?

loadObjetos=select id, usuario, modelo, marcador, publico, descricao from tab_objeto
loadObjetoById=select usuario, modelo, marcador, publico, descricao from tab_objeto where id = ?
loadObjetoIdByUsuario=select id from tab_objeto where usuario = ?
loadObjetosIdByUsuario=select id from tab_objeto where usuario = ?

#MARCADOR
marcadorInsert=insert into tab_marcador (usuario, marcador, arquivo_imprimir) values (?, ?, ?)
loadMarcadorById=select usuario, marcador, arquivo_imprimir from tab_marcador where id = ?
loadMarcadorByUsuario=select id from tab_marcador where usuario = ?

#MODELO
modeloInsert=insert into tab_modelo(usuario, modelo, imagem) values (?, ?, ?)
loadModeloById=select usuario, modelo, imagem from tab_modelo where id = ?
loadModelosByUsuario=select id from tab_modelo where usuario = ?

#USUARIO
usuarioInsert=insert into tab_usuario(nome, login, senha) values(?, ?, ?)
loadUsuarioById=select nome, login, senha from tab_usuario where id = ?
loadUsuarioByLogin=select nome, login, senha from tab_usuario where login = ?
loadIdUsuarios=select id from tab_usuario
checkUser=select count(*) from tab_usuario where login = ?
doLogin=select id, nome from tab_usuario where login = ? and senha = ?