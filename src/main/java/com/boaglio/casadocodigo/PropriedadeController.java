package com.boaglio.casadocodigo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class PropriedadeController {

	@Autowired
	private PropriedadeRepository repository;

	@RequestMapping(value = "/find", method = RequestMethod.GET)
	List<Propriedade> findByFiltro(@RequestParam("filtro") String filtro) {
		return repository.findByFiltro(filtro);
	}

}
