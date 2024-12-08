package com.sdp.jfsd.service;

import java.util.List;

import com.sdp.jfsd.model.Announcement;

public interface AnnouncementService {
    void addAnnouncement(Announcement announcement);
    List<Announcement> getAnnouncementsByTeacher(Long teacherId);
    List<Announcement> getAllAnnouncements();
}

