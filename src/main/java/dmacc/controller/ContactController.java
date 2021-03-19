package dmacc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import dmacc.beans.Contact;
import dmacc.repository.ContactRepository;

@Controller
public class ContactController {
	
	@Autowired
	ContactRepository repo;
	
	@GetMapping("/contacts")
	public String listContacts(Model model) {
		List<Contact> contacts = repo.findAll();
		model.addAttribute("contacts", contacts);
		contacts.forEach(System.out::println);
		return "contacts";
	}

}
