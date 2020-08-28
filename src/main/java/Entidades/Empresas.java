
package Entidades;

public class Empresas {
    private String CodEmpresa;
    private String DescEmpresa;
    private String Contrapartida;

    public Empresas() {
    }

    public Empresas(String CodEmpresa, String DescEmpresa, String Contrapartida) {
        this.CodEmpresa = CodEmpresa;
        this.DescEmpresa = DescEmpresa;
        this.Contrapartida = Contrapartida;
    }

    public Empresas(String Contrapartida) {
        this.Contrapartida = Contrapartida;
    }

    
    @Override
    public String toString() {
        return "Empresas{" + "CodEmpresa=" + CodEmpresa + ", DescEmpresa=" + DescEmpresa + ", Contrapartida=" + Contrapartida + '}';
    }

    public String getCodEmpresa() {
        return CodEmpresa;
    }

    public void setCodEmpresa(String CodEmpresa) {
        this.CodEmpresa = CodEmpresa;
    }

    public String getDescEmpresa() {
        return DescEmpresa;
    }

    public void setDescEmpresa(String DescEmpresa) {
        this.DescEmpresa = DescEmpresa;
    }

    public String getContrapartida() {
        return Contrapartida;
    }

    public void setContrapartida(String Contrapartida) {
        this.Contrapartida = Contrapartida;
    }
    
    
}
