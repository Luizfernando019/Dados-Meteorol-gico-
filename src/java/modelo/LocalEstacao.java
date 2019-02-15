/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Juliana
 */
public class LocalEstacao {
    
    int idLocalEstacao;
    String nome;
    float altura;
    String descricao;
    String latitude;
    String longitude;

    public LocalEstacao() {
    }

    public LocalEstacao(int idLocalEstacao, String nome, float altura, String descricao, String latitude, String longitude) {
        this.idLocalEstacao = idLocalEstacao;
        this.nome = nome;
        this.altura = altura;
        this.descricao = descricao;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public int getIdLocalEstacao() {
        return idLocalEstacao;
    }

    public void setIdLocalEstacao(int idLocalEstacao) {
        this.idLocalEstacao = idLocalEstacao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }
    
    
}
