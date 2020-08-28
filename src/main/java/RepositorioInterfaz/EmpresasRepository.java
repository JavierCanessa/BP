

package RepositorioInterfaz;

import Entidades.Empresas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import Connectors.Connectors;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.text.html.HTML;


public class EmpresasRepository implements I_EmpresasRepository{
    private Connectors connectors;

    public EmpresasRepository(Connectors connectors) {
        this.connectors = connectors;
    }

    @Override
    public void guardar(Empresas empresas) {
       if ( empresas == null ) return ;
        try {
            PreparedStatement ps = new Connectors().getConnection().prepareStatement(
                    "insert into listarecaudacion ( CodEmpresa, DescEmpresa, Contrapartida ) values (?,?,?) ",
                    PreparedStatement.RETURN_GENERATED_KEYS  );{
                        ps.setString(1, empresas.getCodEmpresa());
                        ps.setString(2, empresas.getDescEmpresa());
                        ps.setString(3, empresas.getContrapartida());
                        ps.execute();
                        ResultSet rs = ps.getGeneratedKeys();
                    }
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
    }

    @Override
    public void eliminar(Empresas empresas) {
        if ( empresas == null ) return;
        try( PreparedStatement ps = new Connectors().getConnection().prepareStatement(
                "delete from listarecaudacion where CodEmpresa = ? " )
        ) {
            ps.setString(1, empresas.getCodEmpresa());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Empresas> getAll() {
        
    
        ArrayList<Empresas> empresa1 = new ArrayList<>();
        Empresas empresas=null;
        try (ResultSet rs=new Connectors().getConnection().createStatement().executeQuery(
                "select * from listarecaudacion") ){
            while( rs.next() ){
                Empresas empre = new Empresas(
                rs.getString("CodEmpresa"),
                rs.getString("DescEmpresa"),
                rs.getString("Contrapartida")
                );
                empresa1.add(empre);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return empresa1; 
        
    }

    @Override
    public Empresas getEmpresa(String CodEmpresa) {
        Empresas empre1 = null;
        try ( ResultSet rs = new Connectors().getConnection().createStatement().executeQuery(
                "select CodEmpresa, DescEmpresa, Contrapartida "
                        + "from listarecaudacion where CodEmpresa = " + "'" + CodEmpresa + "'" ) )
        {
            if ( rs.next() ) {
                empre1 = new Empresas(
                    rs.getString("CodEmpresa"),
                    rs.getString("DescEmpresa"),
                    rs.getString("Contrapartida")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
        return  empre1;   
    }

    
    

    @Override
    public void modificarContrapartida(Empresas empresa , String contrapartida) {
        if ( empresa == null ) return;
        try (PreparedStatement ps=connectors.getConnection().prepareStatement(
                "update listarecaudacion set Contrapartida = " + "'" + contrapartida +  "'" + " where CodEmpresa = ?")){
            ps.setString(1, empresa.getCodEmpresa() );
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}
        
        


