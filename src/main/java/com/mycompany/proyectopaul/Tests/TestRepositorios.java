
package com.mycompany.proyectopaul.Tests;

import Connectors.Connectors;
import Entidades.Empresas;
import RepositorioInterfaz.EmpresasRepository;
import RepositorioInterfaz.I_EmpresasRepository;

public class TestRepositorios {

   
    public static void main(String[] args) {
        // TODO code application logic here
        
        I_EmpresasRepository a = new EmpresasRepository( new Connectors() );
        //Empresas emp1 = new Empresas("100500", "Hay que intentar ", "Modificar");
        //a.guardar(emp1);
        System.out.println( a.getById("144").getClass() );
        
        //System.out.println(  intentara.getEmpresa(76) );
        //System.out.println( a.getAll() );
        //a.eliminar(a.getEmpresa("100500"));
        //System.out.println(  a.getEmpresa("El Universo")  );
       //a.eliminar( a.getEmpresa("56198461") );
        //Empresas emp1 = new Empresas("3", "PrebaContrapartida", "desdeConsola");
        //a.guardar(emp1);
        //System.out.println(a.getEmpresa("3"));
        //a.modificarContrapartida(a.getEmpresa("10"), "actualizadoDesdeNetbeansPapi");
        
    }
    
}
