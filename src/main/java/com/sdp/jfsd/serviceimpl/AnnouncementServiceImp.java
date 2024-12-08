package com.sdp.jfsd.serviceimpl;

import com.sdp.jfsd.model.Announcement;
import com.sdp.jfsd.repository.AnnouncementRepository;
import com.sdp.jfsd.service.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AnnouncementServiceImp implements AnnouncementService {

    @Autowired
    private AnnouncementRepository announcementRepository;

    @Override
    public void addAnnouncement(Announcement announcement) {
        announcementRepository.save(announcement);
    }

    @Override
    public List<Announcement> getAnnouncementsByTeacher(Long teacherId) {
        return announcementRepository.findByTeacherId(teacherId);
    }

    @Override
    public List<Announcement> getAllAnnouncements() {
        return announcementRepository.findAll();
    }
}
