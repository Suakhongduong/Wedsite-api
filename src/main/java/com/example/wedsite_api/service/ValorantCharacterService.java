package com.example.wedsite_api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.wedsite_api.model.ValorantCharacter;
import com.example.wedsite_api.repository.ValorantCharacterRepository;

@Service
public class ValorantCharacterService {

    @Autowired
    private ValorantCharacterRepository repository;

    public List<ValorantCharacter> getAllCharacters() {
        return repository.findAll();
    }

    public Optional<ValorantCharacter> getCharacterById(Long id) {
        return repository.findById(id);
    }

    public ValorantCharacter createCharacter(ValorantCharacter character) {
        return repository.save(character);
    }

    public Optional<ValorantCharacter> updateCharacter(Long id, ValorantCharacter updatedCharacter) {
        return repository.findById(id).map(existing -> {
            existing.setName(updatedCharacter.getName());
            existing.setDescription(updatedCharacter.getDescription());
            existing.setRole(updatedCharacter.getRole());
            existing.setOrigin(updatedCharacter.getOrigin());
            return repository.save(existing);
        });
    }

    public boolean deleteCharacter(Long id) {
        if (repository.existsById(id)) {
            repository.deleteById(id);
            return true;
        }
        return false;
    }

    public List<ValorantCharacter> getCharactersByRole(String role) {
        return repository.findByRoleIgnoreCase(role);
    }

    public List<ValorantCharacter> searchCharactersByName(String name) {
        return repository.findByNameContainingIgnoreCase(name);
    }
}