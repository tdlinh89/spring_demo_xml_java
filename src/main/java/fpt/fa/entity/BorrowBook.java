package fpt.fa.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class BorrowBook {
	@EmbeddedId
	private BorrowBookId borrowBookId;
	
	@ManyToOne
	@MapsId("studentId")
	private Student student;
	
	@ManyToOne
	@MapsId("bookId")
	private Book book;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(insertable = false, updatable = false)
	private Date borrowDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date returnDate;
	
	private long fines;

	public BorrowBook() {
	}

	public BorrowBook(BorrowBookId borrowBookId, Student student, Book book, Date borrowDate, Date returnDate,
			long fines) {
		super();
		this.borrowBookId = borrowBookId;
		this.student = student;
		this.book = book;
		this.borrowDate = borrowDate;
		this.returnDate = returnDate;
		this.fines = fines;
	}

	public BorrowBookId getBorrowBookId() {
		return borrowBookId;
	}

	public void setBorrowBookId(BorrowBookId borrowBookId) {
		this.borrowBookId = borrowBookId;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
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
