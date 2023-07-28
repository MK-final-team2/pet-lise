/*
 * package board.petplace;
 * 
 * import org.springframework.stereotype.Repository;
 * 
 * import java.util.ArrayList; import java.util.HashMap; import java.util.List;
 * import java.util.Map;
 * 
 * @Repository public class PetPlaceDAOImpl implements PetPlaceDAO {
 * 
 * private Map<Integer, PetPlaceDTO> petPlacesMap = new HashMap<>(); private int
 * nextId = 1;
 * 
 * @Override public PetPlaceDTO getPetPlaceById(int place_id) { return
 * petPlacesMap.get(place_id); }
 * 
 * @Override public List<PetPlaceDTO> getAllPetPlaces() { return new
 * ArrayList<>(petPlacesMap.values()); }
 * 
 * @Override public void savePetPlace(PetPlaceDTO petPlaceDTO) {
 * petPlaceDTO.setPlace_id(nextId++);
 * petPlacesMap.put(petPlaceDTO.getPlace_id(), petPlaceDTO); }
 * 
 * @Override public void updatePetPlace(PetPlaceDTO petPlaceDTO) {
 * petPlacesMap.put(petPlaceDTO.getPlace_id(), petPlaceDTO); }
 * 
 * @Override public void deletePetPlace(int place_id) {
 * petPlacesMap.remove(place_id); } }
 */