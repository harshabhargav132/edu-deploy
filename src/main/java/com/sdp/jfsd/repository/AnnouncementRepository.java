package com.sdp.jfsd.repository;

import com.sdp.jfsd.model.Announcement;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface AnnouncementRepository extends JpaRepository<Announcement, Long> {
    List<Announcement> findByTeacherId(Long teacherId);
    List<Announcement> findAll(); // For student to see all announcements
}

