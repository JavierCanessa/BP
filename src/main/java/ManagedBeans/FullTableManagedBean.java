/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagedBeans;

import Connectors.Connectors;
import Entidades.Empresas;
import RepositorioInterfaz.EmpresasRepository;
import RepositorioInterfaz.I_EmpresasRepository;
import com.sun.jdi.connect.Connector;
import java.io.Serializable;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author javiercanessa
 */
@Named("fullTableMB")
@SessionScoped
public class FullTableManagedBean implements Serializable {
    private I_EmpresasRepository cr = new EmpresasRepository( new Connectors() );
    private Empresas e = new Empresas();
    private String mensaje="";
    
    public List<Empresas>getAll(){
        return cr.getAll();
    }
}
