package entity;
// Generated 10-22-2016 08:37:44 AM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Expediente generated by hbm2java
 */
@Entity
@Table(name="EXPEDIENTE"
    ,schema="SYSTEM"
)
public class Expediente  implements java.io.Serializable {


     private BigDecimal codExpediente;
     private Clinica clinica;
     private Paciente paciente;
     private Date fechaCreacion;

    public Expediente() {
    }

	
    public Expediente(BigDecimal codExpediente, Paciente paciente, Date fechaCreacion) {
        this.codExpediente = codExpediente;
        this.paciente = paciente;
        this.fechaCreacion = fechaCreacion;
    }
    public Expediente(BigDecimal codExpediente, Clinica clinica, Paciente paciente, Date fechaCreacion) {
       this.codExpediente = codExpediente;
       this.clinica = clinica;
       this.paciente = paciente;
       this.fechaCreacion = fechaCreacion;
    }
   
     @Id 

    
    @Column(name="COD_EXPEDIENTE", unique=true, nullable=false, precision=22, scale=0)
    public BigDecimal getCodExpediente() {
        return this.codExpediente;
    }
    
    public void setCodExpediente(BigDecimal codExpediente) {
        this.codExpediente = codExpediente;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="COD_CLINICA")
    public Clinica getClinica() {
        return this.clinica;
    }
    
    public void setClinica(Clinica clinica) {
        this.clinica = clinica;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="ID_AFILIADO", nullable=false)
    public Paciente getPaciente() {
        return this.paciente;
    }
    
    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="FECHA_CREACION", nullable=false, length=7)
    public Date getFechaCreacion() {
        return this.fechaCreacion;
    }
    
    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }




}

