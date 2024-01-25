package fpt.fa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fpt.fa.entity.BorrowBook;
import fpt.fa.entity.BorrowBookId;

public interface BorrowBookRepository extends JpaRepository<BorrowBook, BorrowBookId>{

}
