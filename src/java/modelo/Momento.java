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
public class Momento {
    
    int idMomento;
    String data;
    String hora;

    public Momento() {
    }

    public Momento(int idMomento, String data, String hora) {
        this.idMomento = idMomento;
        this.data = data;
        this.hora = hora;
    }

    public int getIdMomento() {
        return idMomento;
    }

    public void setIdMomento(int idMomento) {
        this.idMomento = idMomento;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }
    
    
}
