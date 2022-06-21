package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.Biere;
import fr.almeri.beerboard.models.Brasserie;
import fr.almeri.beerboard.repositories.BiereRepository;
import fr.almeri.beerboard.repositories.BrasserieRepository;
import fr.almeri.beerboard.repositories.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
public class BrasserieController {

    @Autowired
    private BrasserieRepository brasserieRepository;

    @Autowired
    private RegionRepository regionRepository;

    @Autowired
    private BiereRepository biereRepository;

    @GetMapping("/breweries")
    public String listeBrasserie(Model model)
    {
        ArrayList<Brasserie> listBrasserieFromDatabase = (ArrayList<Brasserie>) brasserieRepository.findAll();
        model.addAttribute("listBrasserie", listBrasserieFromDatabase);

        return "brasserie/index";
    }

    @GetMapping("/see-brewery/{code}")
    public String detailBrasserie(Model model, @PathVariable String code)
    {
        Brasserie brasserie = brasserieRepository.findById(code).orElseThrow();

        model.addAttribute("brasserie", brasserie);

//        ArrayList<Marque> marques = marqueRepository.getListeMarqueByBrasserie(code);
//        model.addAttribute("marques", marques);

        ArrayList<Biere> bieres = biereRepository.getListeVersionByMarque(code);
        model.addAttribute("bieres", bieres);



        return "brasserie/detail";

    }

    @GetMapping("/add-brewery")
    public String ajouterBrasserieForm(Model model)
    {
        model.addAttribute("update", false);
        model.addAttribute("brasserie", new Brasserie());
        model.addAttribute("listeRegion", regionRepository.getListeNomRegionObjAsc());

        return "brasserie/ajouter";
    }

    @PostMapping("/add-brewery")
    public String ajouterBrasserie (@ModelAttribute Brasserie brasserie, Model model)
    {
        // Création d'une brasserie + enregistrement dans la base de données.
        //Brasserie newBrasserie = brasserieRepository.save(brasserie);
        //System.out.println(brasserie);
        brasserieRepository.save(brasserie);


        return "redirect:/breweries";
    }

    @GetMapping("/update-brewery/{code}")
    public String modifierBrasserieForm(Model model,@PathVariable String code)
    {
        model.addAttribute("update", true);
        model.addAttribute("brasserie", brasserieRepository.findById(code));
        model.addAttribute("listeRegion", regionRepository.getListeNomRegionObjAsc());

        return "brasserie/ajouter";
    }
}
