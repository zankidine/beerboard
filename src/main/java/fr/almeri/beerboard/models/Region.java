package fr.almeri.beerboard.models;

import java.util.Objects;

public class Region {
    /**
     * Entité
     */
    private String nomRegion;
    private Pays nomPays;

    public Region(){};

    /**
     *
     * @param nomRegion
     * @param nomPays
     */
    public Region(String nomRegion, Pays nomPays)
    {
        this.nomRegion = nomRegion;
        this.nomPays = nomPays;
    }

    /**
     *
     * @return String nomRegion
     */
    public String getNomRegion() {
        return this.nomRegion;
    }

    /**
     *
     * @param nomRegion
     */
    public void setNomRegion(String nomRegion) {
        this.nomRegion = nomRegion;
    }

    /**
     *
     * @return Pays
     */
    public Pays getNomPays() {
        return this.nomPays;
    }

    /**
     *
     * @param nomPays
     */
    public void setNomPays(Pays nomPays) {
        this.nomPays = nomPays;
    }

    @Override
    public String toString() {
        return "Region{" +
                "nomRegion='" + this.getNomRegion() + '\'' +
                ", nomPays=" + this.getNomPays() +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Region)) return false;
        Region region = (Region) o;
        return Objects.equals(getNomRegion(), region.getNomRegion()) && Objects.equals(getNomPays(), region.getNomPays());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getNomRegion(), getNomPays());
    }
}
