package fpt.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fpt.fa.entity.BorrowBook;
import fpt.fa.entity.BorrowBookId;
import fpt.fa.entity.Student;
import fpt.fa.form.BorrowForm;
import fpt.fa.repository.BookRepository;
import fpt.fa.repository.BorrowBookRepository;
import fpt.fa.repository.StudentRepository;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private BorrowBookRepository borrowBookRepository;
	
	@GetMapping("/list")
	public String getList(Model model) {
		model.addAttribute("listStudents", studentRepository.findAll());
		return "student/list";
	}
	
	@GetMapping("/create")
	public String showCreate(Model model) {
		model.addAttribute("student", new Student());
		return "student/create";
	}
	
	@PostMapping("/create")
	public String doCreate(@ModelAttribute Student student) {
		studentRepository.save(student);
		return "redirect:list";
	}
	
	@GetMapping("/borrow")
	public String showBorrow(Model model) {
		model.addAttribute("borrowBook", new BorrowForm());
		model.addAttribute("books", bookRepository.findAll());
		return "student/borrow";
	}
	
	@PostMapping("borrow")
	public String doBorrow(@ModelAttribute("borrowBook") BorrowForm borrowForm) {
		Student student = new Student(borrowForm.getStudentId(), borrowForm.getName(), borrowForm.getBirthday());
		studentRepository.save(student);
		BorrowBookId borrowBookId = new BorrowBookId(borrowForm.getStudentId(), borrowForm.getBook().getBookId(), borrowForm.getBorrowDate());
		BorrowBook borrowBook = new BorrowBook(borrowBookId, student, borrowForm.getBook(), borrowForm.getBorrowDate(), borrowForm.getReturnDate(), 0);
		borrowBookRepository.save(borrowBook);
		return "redirect:list";
	}
}
