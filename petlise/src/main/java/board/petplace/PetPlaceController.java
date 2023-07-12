package board.petplace;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PetPlaceController {
    private final PetPlaceDAO petPlaceDAO;

    @Autowired
    public PetPlaceController(PetPlaceDAO petPlaceDAO) {
        this.petPlaceDAO = petPlaceDAO;
    }

    @GetMapping("/places/{placeId}")
    public PetPlaceDTO getPlaceById(@PathVariable int placeId) {
        return petPlaceDAO.getPlaceById(placeId);
    }

    @PostMapping("/places")
    public void createPlace(@RequestBody PetPlaceDTO petPlaceDTO) {
        petPlaceDAO.createPlace(petPlaceDTO);
    }

    // 카테고리별 게시글 목록 조회
    @GetMapping("/places/category/{category}")
    public List<PetPlaceDTO> getPlacesByCategory(@PathVariable String category) {
        return petPlaceDAO.getPlacesByCategory(category);
    }

    }
