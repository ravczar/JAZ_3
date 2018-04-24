package service;

import java.util.ArrayList;
import java.util.List;

import domain.LoanApplication;

public class LoanService {

	private List<LoanApplication> loans = new ArrayList <LoanApplication>(); 
	
	public void add(LoanApplication application) {
		if(loans.contains(application))  // sprawdzanie czy ju� jest w Li�cie loans
			return; 
		loans.add(application);	// je�li jej nie ma to dodaje j� do Listy	
	}
	
	public List<LoanApplication> getAll(){
		return loans;
	}
}
