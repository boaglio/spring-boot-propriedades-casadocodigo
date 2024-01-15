package com.boaglio.casadocodigo;

import jakarta.persistence.Entity;

import jakarta.persistence.Id;

import java.util.Objects;

@Entity
public class Propriedade {

	@Id
	private String nome;

	private String valor;

	private String descricao;

	private String categoria;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Propriedade that = (Propriedade) o;
		return Objects.equals(nome, that.nome);
	}

	@Override
	public int hashCode() {
		return Objects.hash(nome);
	}

	@Override
	public String toString() {
		return "Propriedade{" +
				"nome='" + nome + '\'' +
				", valor='" + valor + '\'' +
				", descricao='" + descricao + '\'' +
				", categoria='" + categoria + '\'' +
				'}';
	}

}