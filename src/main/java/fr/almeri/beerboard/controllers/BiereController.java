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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
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
    public String listeBieres(Model model, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            // On récupère l'ensemble des bières de la base de données
            ArrayList<Biere> listBieresFromDatabase = (ArrayList<Biere>) biereRepository.findAll();

            model.addAttribute("listBieres", listBieresFromDatabase);

            return "bieres/index";

        }else {
            // Page de connexion
            return "login";
        }

    }

    /**
     * Affiche la fiche détail d'une bière
     * @param model
     * @param marque
     * @param version
     * @return
     */
    @GetMapping("/see-beer/{marque}/{version}")
    public String detailBiere(Model model, @PathVariable String marque, @PathVariable String version, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            // Id bière
            BiereId idBiere = new BiereId(new Marque(marque),version);

            // Obj Bière
            Biere biere = biereRepository.findById(idBiere).orElseThrow();
            model.addAttribute("biere", biere);

            return "bieres/detail";

        }else {
            // Page de connexion
            return "login";
        }


    }

    /**
     * Affiche le formulaire vierge pour l'ajout d'une bière
     * @param model
     * @return
     */
    @GetMapping("/add-beer")
    public String ajouterBiereForm(Model model, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            model.addAttribute("update", false);
            model.addAttribute("biere", new Biere());
            model.addAttribute("listeType", typeRepository.findAll());
            model.addAttribute("listeMarque", marqueRepository.findAll());

            return "bieres/ajouter";

        }else {
            // Page de connexion
            return "login";
        }

    }

    /**
     * Création + Mis à jour
     * @param biere
     * @param model
     * @return
     */
    @PostMapping("/add-beer")
    public String ajouterBiere (@Validated @ModelAttribute Biere biere, Model model, HttpSession session,RedirectAttributes flash)
    {
        if (session.getAttribute("auth") != null)
        {

            // Création d'une bière + enregistrement dans la base de données.

            biereRepository.save(biere);

            flash.addFlashAttribute("message", "Ajout d'une bière Ok");

            return "redirect:/beers";

        }else {
            // Page de connexion
            return "login";
        }

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
    public String modifierBiereForm(Model model,@PathVariable String marque, @PathVariable String version, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            // Id bière
            BiereId idBiere = new BiereId(new Marque(marque),version);

            model.addAttribute("update", true);
            model.addAttribute("biere", biereRepository.findById(idBiere));
            model.addAttribute("listeType", typeRepository.findAll());
            model.addAttribute("listeMarque", marqueRepository.findAll());

            return "bieres/ajouter";

        }else {
            // Page de connexion
            return "login";
        }

    }

    /**
     * Suppression d'une bière
     * @param model
     * @param marque
     * @param version
     * @return
     */
    @GetMapping("/delete-beer/{marque}/{version}")
    public String supprimerBiereForm(Model model, @PathVariable String marque, @PathVariable String version, HttpSession session, RedirectAttributes flash)
    {
        if (session.getAttribute("auth") != null)
        {

            // Id bière
            BiereId idBiere = new BiereId(new Marque(marque),version);


            if (!biereRepository.findById(idBiere).isEmpty())
            {
                biereRepository.deleteById(idBiere);
            }

            flash.addFlashAttribute("message", "Suppression Ok");

            return "redirect:/beers";

        }else {
            // Page de connexion
            return "login";
        }

    }


}
