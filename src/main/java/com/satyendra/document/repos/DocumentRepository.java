package com.satyendra.document.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.satyendra.document.entities.Document;

public interface DocumentRepository extends JpaRepository<Document, Long> {

}
