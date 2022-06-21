/**
 * Projet : Mise en place d'une plateforme de gestion (Brasserie)
 * Gestion des bières (consultation, modification et ajout)
 * @date : 21/06/2022
 * @class : BiereController
 * @author: Zankidine Abdou
 */

package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.*;
import fr.almeri.beerboard.repositories.BiereRepository;
import fr.almeri.beerboard.repositories.MarqueRepository;
import fr.almeri.beerboard.repositories.TypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;

@Controller
public class BiereController {
    @Autowired
    private BiereRepository biereRepository;

    @Autowired
    private TypeRepository typeRepository;

    @Autowired
    private MarqueRepository marqueRepository;

    /**
     * Affiche l'ensemble des bières
     * Tableau
     * @param model
     * @return
     */
    @GetMapping("/beers")
    public String listeBieres(Model model)
    {
        // On récupère l'ensemble des bières de la base de données
        ArrayList<Biere> listBieresFromDatabase = (ArrayList<Biere>) biereRepository.findAll();

        model.addAttribute("listBieres", listBieresFromDatabase);

        return "bieres/index";
    }

    /**
     * Affiche la fiche détail d'une bière
     * @param model
     * @param marque
     * @param version
     * @return
     */
    @GetMapping("/see-beer/{marque}/{version}")
    public String detailBiere(Model model, @PathVariable String marque, @PathVariable String version)
    {
        // Id bière
        BiereId idBiere = new BiereId(new Marque(marque),version);

        // Obj Bière
        Biere biere = biereRepository.findById(idBiere).orElseThrow();
        model.addAttribute("biere", biere);

        return "bieres/detail";

    }

    /**
     * Affiche le formulaire vierge pour l'ajout d'une bière
     * @param model
     * @return
     */
    @GetMapping("/add-beer")
    public String ajouterBiereForm(Model model)
    {
        model.addAttribute("update", false);
        model.addAttribute("biere", new Biere());
        model.addAttribute("listeType", typeRepository.findAll());
        model.addAttribute("listeMarque", marqueRepository.findAll());

        return "bieres/ajouter";
    }

    /**
     * Création + Mis à jour
     * @param biere
     * @param model
     * @return
     */
    @PostMapping("/add-beer")
    public String ajouterBiere (@Validated @ModelAttribute Biere biere, Model model)
    {
        // Création d'une bière + enregistrement dans la base de données.
        //System.out.println(biere);

        biereRepository.save(biere);

        return "redirect:/beers";
    }

    /**
     * Affiche le formulaire pour la modification
     * En ajoutant les données d'une bière(en modif)
     * @param model
     * @param marque
     * @param version
     * @return
     */
    @GetMapping("/update-beer/{marque}/{version}")
    public String modifierBrasserieForm(Model model,@PathVariable String marque, @PathVariable String version)
    {
        // Id bière
        BiereId idBiere = new BiereId(new Marque(marque),version);

        model.addAttribute("update", true);
        model.addAttribute("biere", biereRepository.findById(idBiere));
        model.addAttribute("listeType", typeRepository.findAll());
        model.addAttribute("listeMarque", marqueRepository.findAll());

        return "bieres/ajouter";
    }


}
