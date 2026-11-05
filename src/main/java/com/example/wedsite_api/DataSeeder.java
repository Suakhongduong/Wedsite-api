package com.example.wedsite_api;

import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.example.wedsite_api.model.ValorantCharacter;
import com.example.wedsite_api.repository.ValorantCharacterRepository;

@Component
public class DataSeeder implements CommandLineRunner {

    private final ValorantCharacterRepository repository;

    public DataSeeder(ValorantCharacterRepository repository) {
        this.repository = repository;
    }

    @Override
    public void run(String... args) {
        if (repository.count() > 0) {
            return;
        }

        List<ValorantCharacter> defaultAgents = List.of(
            new ValorantCharacter(
                "Jett",
                "Agile duelist using wind abilities to outmaneuver opponents quickly.",
                "Duelist",
                "South Korea",
                "/images/jett.jfif"
            ),
            new ValorantCharacter(
                "Reyna",
                "Dominates close-range combat and thrives on every kill she scores.",
                "Duelist",
                "Mexico",
                "/images/reyna.png"
            ),
            new ValorantCharacter(
                "Sova",
                "Tracks, finds, and eliminates enemies with precise recon abilities.",
                "Initiator",
                "Russia",
                "/images/sova.png"
            ),
            new ValorantCharacter(
                "Omen",
                "Uses shadow-based tactics to blind enemies and control space across the map.",
                "Controller",
                "Unknown",
                "/images/omen.jfif"
            ),
            new ValorantCharacter(
                "Killjoy",
                "Secures key positions with traps, turrets, and defensive gadgets.",
                "Sentinel",
                "Germany",
                "/images/killjoy.jfif"
            )
        );

        repository.saveAll(defaultAgents);
    }
}
