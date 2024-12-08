package com.sdp.jfsd.service;

import com.sdp.jfsd.model.Admin;

public interface AdminService {
    Admin authenticate(String username, String password);
}
