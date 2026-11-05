package com.example.wedsite_api;

import com.example.wedsite_api.model.ValorantCharacter;
import com.example.wedsite_api.service.ValorantCharacterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class ValorantViewController {

    @Autowired
    private ValorantCharacterService characterService;

    // 1. Gallery Page (Trang chủ) + Search & Filter
    @GetMapping("/")
    public String getAllCharacters(@RequestParam(required = false) String name,
                                  @RequestParam(required = false) String role,
                                  Model model) {
        List<ValorantCharacter> characters = characterService.getAllCharacters();
        
        if (name != null && !name.trim().isEmpty()) {
            characters = characters.stream()
                    .filter(c -> c.getName() != null && c.getName().toLowerCase().contains(name.toLowerCase().trim()))
                    .toList();
        }
        if (role != null && !role.trim().isEmpty()) {
            characters = characters.stream()
                    .filter(c -> c.getRole() != null && c.getRole().equalsIgnoreCase(role.trim()))
                    .toList();
        }

        model.addAttribute("characters", characters);
        model.addAttribute("searchName", name);
        model.addAttribute("searchRole", role);
        return "index";
    }

    // 2. Details Page
    @GetMapping("/characters/{id}")
    public String getCharacterDetails(@PathVariable Long id, Model model) {
        ValorantCharacter character = characterService.getCharacterById(id).orElse(null);
        if (character == null) {
            return "redirect:/?error=NotFound";
        }
        model.addAttribute("character", character);
        return "details";
    }

    // 3. About Page
    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    // 4. Form Add Character
    @GetMapping("/characters/new")
    public String showAddForm(Model model) {
        model.addAttribute("character", new ValorantCharacter());
        return "new-character-form";
    }

    @PostMapping("/characters")
    public String saveCharacter(@ModelAttribute ValorantCharacter character, RedirectAttributes redirectAttributes) {
        characterService.createCharacter(character);
        redirectAttributes.addFlashAttribute("message", character.getName() + " was added successfully!");
        return "redirect:/";
    }

    // 5. Form Edit Character
    @GetMapping("/characters/{id}/edit")
    public String showEditForm(@PathVariable Long id, Model model) {
        ValorantCharacter character = characterService.getCharacterById(id).orElse(null);
        if (character == null) {
            return "redirect:/?error=NotFound";
        }
        model.addAttribute("character", character);
        return "new-character-form";
    }

    @PostMapping("/characters/{id}")
    public String updateCharacter(@PathVariable Long id, @ModelAttribute ValorantCharacter character, RedirectAttributes redirectAttributes) {
        characterService.updateCharacter(id, character);
        redirectAttributes.addFlashAttribute("message", character.getName() + " was updated successfully!");
        return "redirect:/characters/" + id;
    }

    // 6. Delete Character
    @PostMapping("/characters/{id}/delete")
    public String deleteCharacter(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        ValorantCharacter character = characterService.getCharacterById(id).orElse(null);
        String characterName = (character != null && character.getName() != null) ? character.getName() : "Character";
        characterService.deleteCharacter(id);
        redirectAttributes.addFlashAttribute("message", characterName + " was removed successfully!");
        return "redirect:/";
    }
}