package web.formations;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import entities.Inscription;
import entities.SessionFormation;

import services.IServiceInscription;
import services.IServiceSessionFormation;

public class ListeSessionFormationsController implements Controller {

	private IServiceSessionFormation ssf;
	private IServiceInscription si;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception
	{
		// Recupere l'id du plan de formation
		int idPlanFormation = -1;
		try { idPlanFormation = Integer.parseInt(arg0.getParameter("id_plan_formation")); }
    	catch (Exception e) { e.printStackTrace(); }
    	
    	// Recupere la liste et selectionne celle qui correspond au plan
    	List<SessionFormation> session_formations = new ArrayList<SessionFormation>();
    	if(idPlanFormation != -1)
    	{	
			for (SessionFormation sessionFormation : ssf.listSessionFormations()) {
				if(sessionFormation.getPlanFormation().getId() == idPlanFormation)
				{
					// Calcul le nombre de participants
					int nbParticipants = 0;
					for (Inscription i : si.listInscriptions()) {
						if(i.getPk().getIdSessionFormation() == sessionFormation.getId())
							nbParticipants++;
					}
					sessionFormation.setNbParticipants(nbParticipants);
					
					// Calcul le prix total
					double prixTotal = 0;
					prixTotal = sessionFormation.getFormation().getPrixParPersonne() * nbParticipants;
					sessionFormation.setPrixTotal(prixTotal);
					
					session_formations.add(sessionFormation);
				}
			}
    	}
		// Ajoute la liste au Model
		ModelAndView myModelAndView = new ModelAndView("liste_session_formations");
		myModelAndView.addObject("session_formations", session_formations);
		myModelAndView.addObject("id_plan_formation", idPlanFormation);
 
		return myModelAndView;
	}

	public IServiceSessionFormation getSsf() {
		return ssf;
	}

	public void setSsf(IServiceSessionFormation ssf) {
		this.ssf = ssf;
	}

	public IServiceInscription getSi() {
		return si;
	}

	public void setSi(IServiceInscription si) {
		this.si = si;
	}
}
