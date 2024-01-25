package fpt.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fpt.fa.repository.BorrowBookRepository;

@Controller
@RequestMapping("/borrow")
public class BorrowBookController {
	@Autowired
	private BorrowBookRepository borrowBookRepository;
	
	@GetMapping("/list")
	public String showList(Model model) {
		model.addAttribute("borrowBooks", borrowBookRepository.findAll());
		return "borrow/list";
	}

}
