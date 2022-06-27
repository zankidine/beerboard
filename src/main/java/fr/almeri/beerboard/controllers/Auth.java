package fr.almeri.beerboard.controllers;

import fr.almeri.beerboard.Utils;
import fr.almeri.beerboard.models.Users;
import fr.almeri.beerboard.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;



import javax.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

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
            model.addAttribute("isBad", false);
            // Page de connexion
            return "login";
        }


    }

    /**
     * AAuthentication de l'utilisateur
     * @param user
     * @param session
     * @return
     * @throws NoSuchAlgorithmException
     * @throws NoSuchFieldException
     * @throws NoSuchProviderException
     */
    @PostMapping("/login")
    public String auth(@ModelAttribute Users user, HttpSession session, Model model) throws NoSuchAlgorithmException, NoSuchFieldException, NoSuchProviderException {

        // Vérification au niveau de la base de données.
        boolean isOk = this.checkPaaword(user);

        if (isOk)
        {
            // Hachage de mot de passe
            //Users userAuth = usersRepository.findById(user.getUserId()).orElseThrow();
            //userAuth.setSalt(Utils.getSalt());
//            userAuth.setPassword(Utils.hashMD5withSalt(userAuth.getPassword(), userAuth.getSalt()));
//            usersRepository.save(userAuth);
            // Démarre une session

            // Création d'une session avec
            // utilisateur connecté
            session.setAttribute("auth", user);
            session.setMaxInactiveInterval(60);
            // Si connexion Ok
            return "redirect:/";

        } else {


            model.addAttribute("isBad", true);
            return "redirect:/login";
        }


    }

    /**
     * Déconnexion de l'utilisateur
     * @param pModel
     * @param session
     * @return
     */
    @GetMapping("/logout")
    public String logout(Model pModel, HttpSession session){

        // Supprime la variable auth(Users)
        session.removeAttribute("auth");
        // Destruction de la session
        session.invalidate();

        return "redirect:/login";
    }

    /**
     * Vérification de l'égalité de mot de passe
     * @param user
     * @return
     * @throws NoSuchAlgorithmException
     * @throws NoSuchFieldException
     * @throws NoSuchProviderException
     */
    private boolean checkPaaword(Users user) throws NoSuchAlgorithmException, NoSuchFieldException, NoSuchProviderException {
        // On cherche le user en BDD à l'aide de son login
        Users u = usersRepository.findByLogin(user.getLogin());

        // Si mot de passe ne correspond pas
        if (u == null)
        {
            return false;
        }

        // Chiffrage du mot de passe saisi par l'utilisateur
        // Pour comparaison
        String newPass = Utils.hashMD5withSalt(user.getPassword(), u.getSalt());

        // Retourne True si mot de passe saisi == mot de passe de la base de données
        return newPass.equals(u.getPassword());
    }
}
