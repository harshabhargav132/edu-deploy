package com.sdp.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sdp.jfsd.model.ContactMessage;

public interface ContactMessageRepository extends JpaRepository<ContactMessage, Long> {
	@Query("SELECT m FROM ContactMessage m WHERE m.email = :email")
	List<ContactMessage> findByEmail(@Param("email") String email);

	List<ContactMessage> findByMessageContaining(String query);

}
