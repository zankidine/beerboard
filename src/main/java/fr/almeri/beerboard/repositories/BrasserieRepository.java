package fr.almeri.beerboard.repositories;

import fr.almeri.beerboard.models.Brasserie;
import fr.almeri.beerboard.models.Marque;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface BrasserieRepository extends CrudRepository<Brasserie, String> {

    @Query("select brasserie.nomBrasserie from Brasserie brasserie, Region region WHERE brasserie.region.nomRegion = region.nomRegion ORDER BY brasserie.nomBrasserie ASC")
    public ArrayList<String> getListeNomBrasserieParRegionAsc();


}
