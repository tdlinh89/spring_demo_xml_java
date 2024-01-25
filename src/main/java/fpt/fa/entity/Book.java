package fpt.fa.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Book {
	@Id
	@GeneratedValue
	private int bookId;
	
	private String bookName;
	
	private String author;
	
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private Date publish;
	
	@OneToMany(mappedBy = "book")
	private List<BorrowBook> borrowBooks;

	public Book() {
	}

	public Book(String bookName, String author, Date publish) {
		this.bookName = bookName;
		this.author = author;
		this.publish = publish;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getPublish() {
		return publish;
	}

	public void setPublish(Date publish) {
		this.publish = publish;
	}
}
