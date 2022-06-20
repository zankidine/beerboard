package fr.almeri.beerboard.repositories;

import fr.almeri.beerboard.models.Marque;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public interface MarqueRepository extends CrudRepository<Marque, String> {

    @Query("SELECT marque FROM Marque marque WHERE marque.brasserie = :code")
    public List<Marque> getListeMarqueByBrasserie(@Param("code") String code);
}
