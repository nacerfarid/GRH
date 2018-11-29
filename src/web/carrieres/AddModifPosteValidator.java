package web.carrieres;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.ValidationUtils;

import entities.Poste;

public class AddModifPosteValidator implements Validator {

	@SuppressWarnings("unchecked")
	@Override
	public boolean supports(Class arg0) {
		return Poste.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		
		/* Verifie que les champs sont remplis */
		// Champs libelle
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1, "libelle", "field.required", "Ne doit pas �tre vide");
	}
}
