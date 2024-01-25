package fpt.fa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fpt.fa.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer>{

}
