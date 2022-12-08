
package Controller;

import Config.Conexion;
import Entidad.Persona;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    Conexion con=new Conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.Conectar());
    ModelAndView mav=new ModelAndView();
    int id;
    List datos;
    
     @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql="select *from terceros";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
    mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
    }
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Persona p){
        String sql="insert into terceros(nombres,documentos,direcciones)values(?,?,?)";
        this.jdbcTemplate.update(sql,p.getNombres(),p.getDocumentos(),p.getDirecciones());
        return new ModelAndView("redirect:/index.htm");
    }
    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("id"));
        String sql="select * from terceros where id="+id;
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
    }
    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Actualizar(Persona p){
        String sql="update terceros set nombres=?,documentos=?,direcciones=? where id="+id;
        this.jdbcTemplate.update(sql,p.getNombres(),p.getDocumentos(),p.getDirecciones());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping("delete.htm")
     public ModelAndView Delete(HttpServletRequest request){
         id=Integer.parseInt(request.getParameter("id"));
         String sql="delete from terceros where id="+id;
         this.jdbcTemplate.update(sql);
          return new ModelAndView("redirect:/index.htm");
     }
      
}
