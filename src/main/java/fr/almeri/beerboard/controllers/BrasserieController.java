package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.Brasserie;
import fr.almeri.beerboard.models.Marque;
import fr.almeri.beerboard.repositories.BrasserieRepository;
import fr.almeri.beerboard.repositories.MarqueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Controller
public class BrasserieController {

    @Autowired
    private BrasserieRepository brasserieRepository;

    @Autowired
    private MarqueRepository marqueRepository;

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



        return "brasserie/detail";

    }
}
