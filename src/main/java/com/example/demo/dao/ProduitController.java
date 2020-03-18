package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Entities.Produits;

@Controller
public class ProduitController {
	@Autowired
	private ProduitRepository produitRepository;
	@RequestMapping(value="/index")
	public String index(Model model) {
		List<Produits> produit=produitRepository.findAll();
		model.addAttribute("listeproduit", produit);
		return "produit";
	}
	
}
