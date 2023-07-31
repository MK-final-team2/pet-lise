package board.petplace;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller

public class PetPlaceController {

    @Autowired
    @Qualifier("petPlaceServiceImpl")
    private PetPlaceService service;

  
    // 펫플레이스 리스트 
    @GetMapping("/petplaceMain")
    public ModelAndView petPlaceList(@ModelAttribute SearchDTO searchdto) {
        PagingResponse<PetPlaceDTO> petPlaces = service.getAllPetPlacePaging(searchdto);

        ModelAndView mv = new ModelAndView();
        mv.addObject("response", petPlaces);
        mv.setViewName("board/petplaceMain");
        return mv;
    }
    
    
    @RequestMapping("/petplaceWrite")
    public String petplaceWrite(HttpSession session, PetPlaceDTO dto) {
        // 로그인 여부 확인
        
        if (session.getAttribute("user_id") != null && dto.getTitle() != null) {
        	System.out.println(dto.toString());
            String user_id = session.getAttribute("user_id").toString();
            dto.setUser_id(user_id);
            service.insertPetPlace(dto);
        }
        
        return "board/petplaceWrite";
    }

    
    
    
    
	
	  @RequestMapping("/petplaceDetail") public ResponseEntity<Void>
	  petplaceDetailpetplace(PetPlaceDTO dto) { service.updatepetplace(dto);
	  
	  return new ResponseEntity(HttpStatus.OK); }
	  
	  @GetMapping("/getpetplace") public String getFindpetplace(Model
	  model, @RequestParam("place_id") int place_id) {
	  
	  PetPlaceDTO petplaceInfo = service.findpetplace(place_id);
	  
	  model.addAttribute("petplaceInfo", petplaceInfo);
	  
	  return "board/petplaceDetail"; }
	 
	
	
	
	@RequestMapping("/deletepetplace")
	public ResponseEntity<Void> deletepetplace(int place_id) {
		service.deletepetplace(place_id);

		return new ResponseEntity(HttpStatus.OK);
	}

   
    }

