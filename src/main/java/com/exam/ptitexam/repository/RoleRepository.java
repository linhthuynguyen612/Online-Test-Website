package com.exam.ptitexam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exam.ptitexam.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
    Role findByName(String name);
}
