package br.com.elisvieira.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;

import br.com.elisvieira.entities.Usuario;
import br.com.elisvieira.factories.ConnectionFactory;

public class UsuarioRepository {
	
	public void saveFuncionario(Usuario usuario) throws Exception {
		
		Connection connection = ConnectionFactory.getConnection();
		
	
		PreparedStatement statement = connection.prepareStatement("insert into usuario(nome, email, senha, tipo, matricula) values(?, ?, md5(?), ?, ?)");
		statement.setString(1, usuario.getNome());
		statement.setString(2, usuario.getEmail());
		statement.setString(3, usuario.getSenha());
		statement.setString(4, usuario.getTipo().toString());
		statement.setString(5, usuario.getMatricula());		
		
		statement.execute();
		
		connection.close();		
	}
	
	public void saveUsuario(Usuario usuario) throws Exception {
		
		Connection connection = ConnectionFactory.getConnection();
		
	
		PreparedStatement statement = connection.prepareStatement("insert into usuario(nome, email, senha, tipo) values(?, ?, md5(?), ?)");
		statement.setString(1, usuario.getNome());
		statement.setString(2, usuario.getEmail());
		statement.setString(3, usuario.getSenha());
		statement.setString(4, usuario.getTipo().toString());
		
		
		statement.execute();
		
		connection.close();		
	}

}
