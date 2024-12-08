package com.sdp.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.jfsd.model.ContactMessage;
import com.sdp.jfsd.repository.ContactMessageRepository;

@Service
public class ContactService {

    @Autowired
    private ContactMessageRepository contactMessageRepository;

    public void saveContactMessage(ContactMessage contactMessage) {
        contactMessageRepository.save(contactMessage);
    }
    public List<ContactMessage> getAllMessages() {
        return contactMessageRepository.findAll();
    }
    public List<ContactMessage> searchMessages(String query) {
        return contactMessageRepository.findByMessageContaining(query);
    }
}
