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
public class DadoMetereologico {
    
    int idDadoMetereologico;
    float anemometro;
    float temperatura;
    int idLocalEstacao;
    int idMomento;

    public DadoMetereologico() {
    }

    public DadoMetereologico(int idDadoMetereologico, float anemometro, float temperatura, int idLocalEstacao, int idMomento) {
        this.idDadoMetereologico = idDadoMetereologico;
        this.anemometro = anemometro;
        this.temperatura = temperatura;
        this.idLocalEstacao = idLocalEstacao;
        this.idMomento = idMomento;
    }

    public int getIdDadoMetereologico() {
        return idDadoMetereologico;
    }

    public void setIdDadoMetereologico(int idDadoMetereologico) {
        this.idDadoMetereologico = idDadoMetereologico;
    }

    public float getAnemometro() {
        return anemometro;
    }

    public void setAnemometro(float anemometro) {
        this.anemometro = anemometro;
    }

    public float getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(float temperatura) {
        this.temperatura = temperatura;
    }

    public int getIdLocalEstacao() {
        return idLocalEstacao;
    }

    public void setIdLocalEstacao(int idLocalEstacao) {
        this.idLocalEstacao = idLocalEstacao;
    }

    public int getIdMomento() {
        return idMomento;
    }

    public void setIdMomento(int idMomento) {
        this.idMomento = idMomento;
    }
    
    
}
