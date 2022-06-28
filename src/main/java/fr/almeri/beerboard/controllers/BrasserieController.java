/**
 * Projet : Mise en place d'une plateforme de gestion (Brasserie)
 * Gestion des brasseries (consultation, modification et ajout)
 * @date : 21/06/2022
 * @class : BrasserieController
 * @author: Zankidine Abdou
 */
package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.Biere;
import fr.almeri.beerboard.models.BiereId;
import fr.almeri.beerboard.models.Brasserie;
import fr.almeri.beerboard.models.Marque;
import fr.almeri.beerboard.repositories.BiereRepository;
import fr.almeri.beerboard.repositories.BrasserieRepository;
import fr.almeri.beerboard.repositories.MarqueRepository;
import fr.almeri.beerboard.repositories.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class BrasserieController {

    @Autowired
    private BrasserieRepository brasserieRepository;

    @Autowired
    private RegionRepository regionRepository;

    @Autowired
    private BiereRepository biereRepository;

    @Autowired
    private MarqueRepository marqueRepository;

    /**
     * Affiche la liste des brasseries
     * Tableau
     * @param model
     * @return
     */
    @GetMapping("/breweries")
    public String listeBrasserie(Model model, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {
            // On récupère l'ensemble des brasseries de la base de données
            ArrayList<Brasserie> listBrasserieFromDatabase = (ArrayList<Brasserie>) brasserieRepository.findAll();
            model.addAttribute("listBrasserie", listBrasserieFromDatabase);

            return "brasserie/index";

        }else {
            // Page de connexion
            return "login";
        }


    }

    /**
     * Affiche la fiche détail d'une brasserie
     * Ainsi que la liste des marques et Versions concernant une bière
     * @param model
     * @param code
     * @return
     */
    @GetMapping("/see-brewery/{code}")
    public String detailBrasserie(Model model, @PathVariable String code, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            // On récupère la brasserie pour la consultation
            Brasserie brasserie = brasserieRepository.findById(code).orElseThrow();
            model.addAttribute("brasserie", brasserie);

            // On récupère la lsite des marques et versions associées à une brasserie
            ArrayList<Biere> bieres = biereRepository.getListeVersionByMarque(code);
            model.addAttribute("bieres", bieres);

            return "brasserie/detail";

        }else {
            // Page de connexion
            return "login";
        }


    }

    /**
     * Affiche le formulaire vierge pour l'ajout d'une brasserie
     * @param model
     * @return
     */
    @GetMapping("/add-brewery")
    public String ajouterBrasserieForm(Model model, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            model.addAttribute("update", false);
            model.addAttribute("brasserie", new Brasserie());
            // regionRepository.getListeNomRegionObjAsc() retourne la liste des régions
            model.addAttribute("listeRegion", regionRepository.getListeNomRegionObjAsc());

            return "brasserie/ajouter";

        }else {
            // Page de connexion
            return "login";
        }

    }

    /**
     * Traitement des données formulaire ajout/modification
     * @param brasserie
     * @param model
     * @return
     */
    @PostMapping("/add-brewery")
    public String traitementBrasserie (@Validated @ModelAttribute Brasserie brasserie, Model model, HttpSession session, RedirectAttributes flash)
    {
        if (session.getAttribute("auth") != null)
        {

            // Création d'une brasserie + enregistrement dans la base de données.
            brasserieRepository.save(brasserie);

            flash.addFlashAttribute("message", "Ajout/Modification Ok");

            return "redirect:/breweries";

        }else {
            // Page de connexion
            return "login";
        }

    }

    /**
     * Affiche le formulaire en modification en incluant
     * les données d'une brasserie
     * @param model
     * @param code
     * @return
     */
    @GetMapping("/update-brewery/{code}")
    public String modifierBrasserieForm(Model model,@PathVariable String code, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {

            model.addAttribute("update", true);
            model.addAttribute("brasserie", brasserieRepository.findById(code));
            model.addAttribute("listeRegion", regionRepository.getListeNomRegionObjAsc());


            return "brasserie/ajouter";

        }else {
            // Page de connexion
            return "login";
        }

    }

    /**
     * Supprission en cascade d'une brasserie
     * @param model
     * @param code
     * @param session
     * @return
     */
    @GetMapping("/delete-brewery/{code}")
    public String suppressionBrasserieForm(Model model,@PathVariable String code, HttpSession session, RedirectAttributes flash)
    {

        if (session.getAttribute("auth") != null)
        {

            //Brasserie brasserie = brasserieRepository.findById(code).orElseThrow();
            ArrayList<Biere> bieres = biereRepository.getListeVersionByMarque(code);

            // Suppression de l'ensemble des bières + marques + versions
            if (!bieres.isEmpty()) {
                for (Biere biere: bieres) {
                    BiereId id = new BiereId(biere.getMarque(), biere.getVersion());
                    // Supprime la bière + version
                    biereRepository.deleteById(id);
                }
            }

            //
            ArrayList<Marque> marques = marqueRepository.getListeMarqueByBrasserie(code);

            if (!marques.isEmpty())
            {
                for (Marque marque: marques) {

                    // Suppression d'une marque
                    marqueRepository.deleteById(marque.getNomMarque());
                }
            }



            // Supression de la brasserie
            brasserieRepository.deleteById(code);

            flash.addFlashAttribute("message", "Suppression Ok");

            return "redirect:/breweries";

        }else {
            // Page de connexion
            return "login";
        }

    }
}
