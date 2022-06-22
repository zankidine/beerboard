package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.models.Users;
import fr.almeri.beerboard.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class Auth {

    @Autowired
    private UsersRepository usersRepository;

    @GetMapping("/login")
    public String index(Model model, HttpSession session)
    {
        if (session.getAttribute("auth") != null)
        {
            // Si une session existe
            // redirection vers le tableau de bord
            return "redirect:/";

        }else {
            // Page de connexion
            return "login";
        }


    }

    @PostMapping("/login")
    public String auth(@ModelAttribute Users user, HttpSession session)
    {
        // Vérification au niveau de la base de données.
        Users userAuth = usersRepository.getUser(user.getLogin(), user.getPassword());

        // Connexion impossible
        if (ObjectUtils.isEmpty(userAuth))
        {
            return "redirect:/login";

        }else {
            // Démarre une session
            session.setAttribute("auth", userAuth);
            session.setMaxInactiveInterval(360*360*60);
            // Si connexion Ok
            return "redirect:/";
        }

    }

    @GetMapping("/logout")
    public String logout(Model pModel, HttpSession session){

        session.removeAttribute("auth");
        session.invalidate();

        return "redirect:/login";
    }
}
