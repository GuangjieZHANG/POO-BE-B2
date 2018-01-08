package com.dszee.tp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.tp.beans.Charge;

public class ModifierCharge extends HttpServlet {
    /* Constantes */
    public static final String CHAMP_NOM       = "nomCharge";
    public static final String CHAMP_PRIORITE    = "prioriteCharge";
    public static final String CHAMP_LOCALISATION   = "localisationCharge";
    public static final String CHAMP_ETAT = "etatCharge";
 
    public static final String ATT_CHARGE      = "charge";
    public static final String ATT_MESSAGE     = "message";
    public static final String ATT_ERREUR      = "erreur";
 
    public static final String VUE             = "/afficherCharge.jsp";
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * Récupération des données saisies, envoyées en tant que paramètres de
         * la requête GET générée à la validation du formulaire
         */
        String nom = request.getParameter( CHAMP_NOM );
        String priorite = request.getParameter( CHAMP_PRIORITE );
        String localisation = request.getParameter( CHAMP_LOCALISATION );
        String etat = request.getParameter( CHAMP_ETAT );
      

        String message;
        boolean erreur;
        /*
         * Initialisation du message à afficher : si un des champs obligatoires
         * du formulaire n'est pas renseigné, alors on affiche un message
         * d'erreur, sinon on affiche un message de succès
         */
        if ( nom.trim().isEmpty() && priorite.trim().isEmpty() && localisation.trim().isEmpty() && etat.trim().isEmpty()) {
            message = "Erreur - Vous n'avez rempli aucun champ. <br> <a href=\"client.jsp\">Cliquez ici</a> pour accéder au formulaire de modification d'une charge.";
            erreur = true;
        } else {
            message = "Charge modifiée avec succès !";
            erreur = false;
        }
        /*
         * Création du bean Client et initialisation avec les données récupérées
         */
        System.out.println(nom+priorite+localisation+etat);
        Charge charge = new Charge();
        if(!nom.trim().isEmpty())
        	charge.setNom( nom );
        if(!priorite.trim().isEmpty())
        	charge.setPriorite( Integer.parseInt(priorite) );
        if(!localisation.trim().isEmpty())
        	charge.setLocalisation( Integer.parseInt(localisation) );
        if(!etat.trim().isEmpty())
        	charge.setEtat(etat);
        

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( ATT_CHARGE, charge );
        request.setAttribute( ATT_MESSAGE, message );
        request.setAttribute( ATT_ERREUR, erreur );
        	
        // ADD Database
        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}

