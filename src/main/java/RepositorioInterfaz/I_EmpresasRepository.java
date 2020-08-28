
package RepositorioInterfaz;

import Entidades.Empresas;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


public interface I_EmpresasRepository {
    void guardar ( Empresas empresas );
    void eliminar ( Empresas empresas );
    void modificarContrapartida ( Empresas empresa, String contrapartida );
    Empresas getEmpresa( String codEmpresa );
    
    List <Empresas>getAll();
    default List <Empresas> g ( Empresas c ){
        return getAll().stream().collect(Collectors.toList());
    }
    
    default List<Empresas>getlikeDesc( String desc ){
        if ( desc==null ) return new ArrayList<Empresas>();
        return getAll()
                .stream()
                .filter(c -> c.getDescEmpresa().toLowerCase().contains(desc.toLowerCase()))
                .collect(Collectors.toList());
    }
    
    default List<Empresas>getlikeID( String id ){
       if ( id==null ) return new ArrayList<Empresas>(); 
       return getAll()
               .stream()
               .filter(c -> c.getCodEmpresa().toLowerCase().equals(id.toLowerCase()))
               .collect(Collectors.toList());
    }
    
    default Empresas getById( String CodEmpresa ){
        return getAll()
                .stream()
                .filter(c -> c.getCodEmpresa().equals(CodEmpresa))
                .findFirst()
                .orElse(    new Empresas()  );
                
    }
    
}
