package com.distribuida.controller;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.VacacionDAO;
import com.distribuida.entities.Vacacion;

@Controller
@RequestMapping("/vacaciones")     //path Principal
public class VacacionController {

	//JSP - Java server Page, son las paginas web ded tecnologias java
	
		@Autowired	
		@Qualifier("vacacionDAOImpl")
		private VacacionDAO vacacionDAO;
		
		@GetMapping("/findAll")      // path secundario
		public String finAll(Model  model) {
			
//			try {
			
				List<Vacacion> vacaciones = vacacionDAO.findAll();
				
				model.addAttribute("vacaciones",vacaciones);    //EJ : Clave = KeyClientes , valor = clientes

				return "vacaciones-listar";  //nombre del formulario EJ.listar-clientes.html o listar-clientes.jsp
				
//			} catch (Exception e) {
//				// TODO: handle exception
//				e.printStackTrace();
//		   }
				
		}

		@GetMapping("/finOne")
		public String findOne(@RequestParam("id_vacacion")@Nullable Integer id_vacacion
				             ,@RequestParam("opcion")@Nullable Integer opcion
				             ,Model model
				) {
			
		//	try {
			
				if(id_vacacion !=null) {
					Vacacion vacacion = vacacionDAO.findOne(id_vacacion);
					model.addAttribute("vacacion", vacacion);
				}
	            if (opcion == 1) {
	                return "vacaciones-add"; //Actualizacion
	            } else {
	                return "vacaciones-del";  //Eliminación
	            }
	            
				//}
				//if(opcion == 1) return "vacaciones-add";  //Actualizacion
				//else return "vacaciones-del";             //Eliminación
				
		//	} catch (Exception e) {
		//		// TODO: handle exception
		//	}

		}
	// --------------------------------------------------Aqui ---------------------------------	
		@PostMapping("/add")
		public String add(@RequestParam("id_vacacion") @Nullable Integer id_vacacion
				      ,@RequestParam("id_empleado") @Nullable Integer id_empleado
				      ,@RequestParam("fecha_inicio_vacacion") @Nullable Date fecha_inicio_vacacion
				      ,@RequestParam("fecha_fin_vacacion") @Nullable Date fecha_fin_vacacion
				      ,@RequestParam("total_dias_vacacion") @Nullable Integer total_dias_vacacion
				      ,@RequestParam("vacacion_aprobado") @Nullable String vacacion_aprobado
				      ,Model model
				) {
			
		//	try {
			
				if(id_vacacion == null) {
					Vacacion Vacacion = new Vacacion(0, id_empleado, fecha_inicio_vacacion,fecha_fin_vacacion,total_dias_vacacion,vacacion_aprobado);
					vacacionDAO.add(Vacacion);
					
				}else {
					
					Vacacion vacacion = new Vacacion(id_vacacion, id_empleado, fecha_inicio_vacacion,fecha_fin_vacacion,total_dias_vacacion,vacacion_aprobado);
					vacacionDAO.up(vacacion);
					
		//	} catch (Exception e) {
		//		// TODO: handle exception
		//	}

			}
			return "redirect:/vacaciones/finAll";    //ir a formulario web por path o url.
		}
		@GetMapping("/del")
		public String del(@RequestParam("id_vacacion") @Nullable Integer id_vacacion) {
			
			//try {
			
				vacacionDAO.del(id_vacacion);
				
				return "redirect:/vacaciones/finAll";
				
		//	} catch (Exception e) {
		//		// TODO: handle exception
		//	}

		}
	
}
