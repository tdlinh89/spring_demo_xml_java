package fpt.fa.form;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import fpt.fa.entity.Book;

public class BorrowForm {
	private String studentId;
	
	private String name;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	
	private Book book;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date borrowDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date returnDate;
	
	private long fines;

	public BorrowForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BorrowForm(String studentId, String name, Date birthday, Book book, Date borrowDate, Date returnDate,
			long fines) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.birthday = birthday;
		this.book = book;
		this.borrowDate = borrowDate;
		this.returnDate = returnDate;
		this.fines = fines;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Date getBorrowDate() {
		return borrowDate;
	}

	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	public long getFines() {
		return fines;
	}

	public void setFines(long fines) {
		this.fines = fines;
	}
}
