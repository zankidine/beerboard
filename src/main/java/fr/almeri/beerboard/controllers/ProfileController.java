package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ProfileController {

    @GetMapping("/profile")
    public String profile(Model pModel, HttpSession session){

        if (session.getAttribute("auth") != null)
        {

            return "/profile";

        }else {
            // Page de connexion
            return "login";
        }

    }
}
