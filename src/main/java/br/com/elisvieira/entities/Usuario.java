package br.com.elisvieira.entities;

import br.com.elisviera.enuns.TipoUsuarioEnum;

public class Usuario {
	
	private Integer idUsuario;
	private String nome;
	private String email;
	private String senha;
	private TipoUsuarioEnum tipo;
	private String matricula;
	
	public Usuario() {
		
	}

	public Usuario(Integer idUsuario, String nome, String email, String senha, TipoUsuarioEnum tipo, String matricula) {
		super();
		this.idUsuario = idUsuario;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.tipo = tipo;
		this.matricula = matricula;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public TipoUsuarioEnum getTipo() {
		return tipo;
	}

	public void setTipo(TipoUsuarioEnum tipo) {
		this.tipo = tipo;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", nome=" + nome + ", email=" + email + ", senha=" + senha
				+ ", tipo=" + tipo + ", matricula=" + matricula + "]";
	}
	
	
}
