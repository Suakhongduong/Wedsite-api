package com.example.wedsite_api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.wedsite_api.model.ValorantCharacter;

@Repository
public interface ValorantCharacterRepository extends JpaRepository<ValorantCharacter, Long> {

    // Filter by role
    List<ValorantCharacter> findByRoleIgnoreCase(String role);

    // Search by name
    List<ValorantCharacter> findByNameContainingIgnoreCase(String name);

}
