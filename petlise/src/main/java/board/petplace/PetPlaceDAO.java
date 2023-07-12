package board.petplace;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PetPlaceDAO {
    private final SqlSession sqlSession;

    @Autowired
    public PetPlaceDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    public PetPlaceDTO getPlaceById(int placeId) {
        return sqlSession.selectOne("board.PetPlace.getPlaceById", placeId);
    }

    public List<PetPlaceDTO> getAllPlaces() {
        return sqlSession.selectList("board.PetPlace.getAllPlaces");
    }

    public void createPlace(PetPlaceDTO petPlaceDTO) {
        sqlSession.insert("board.PetPlace.createPlace", petPlaceDTO);
    }
    public List<PetPlaceDTO> getPlacesByCategory(String category) {
        return sqlSession.selectList("board.PetPlace.getPlacesByCategory", category);
    }

}

