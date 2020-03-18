package com.example.demo;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import com.example.demo.Entities.Produits;
import com.example.demo.dao.ProduitRepository;

@SpringBootApplication
public class CataMvc4Application {

	public static void main(String[] args) {
		SpringApplication.run(CataMvc4Application.class, args);
		ApplicationContext ctx=SpringApplication.run(CataMvc4Application.class, args);
		ProduitRepository ProduitRepository=ctx.getBean(ProduitRepository.class);
		ProduitRepository.save(new Produits("LX 4352", 670,90));
		ProduitRepository.save(new Produits("Ord HP 452", 670,90));
		ProduitRepository.save(new Produits("Imprimante Epson", 670,90));
		ProduitRepository.save(new Produits("Imprimante HP", 670,90));
		ProduitRepository.findAll().forEach(p->System.out.println(p.getDesignation()));
	}

}
