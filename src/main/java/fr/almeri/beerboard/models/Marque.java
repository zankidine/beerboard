package fr.almeri.beerboard.models;

import java.util.Objects;

public class Marque {

    /**
     * Entité marque
     */
    private String nomMarique;
    private Brasserie brasserie;

    public Marque(){};

    /**
     * @param nomMarique
     */
    public Marque(String nomMarique)
    {
        this.nomMarique = nomMarique;
    }

    /**
     * @return String nomMarique
     */
    public String getNomMarique() {
        return this.nomMarique;
    }

    /**
     * @param nomMarique
     */
    public void setNomMarique(String nomMarique) {
        this.nomMarique = nomMarique;
    }

    /**
     * @return Brasserie
     */
    public Brasserie getBrasserie() {
        return this.brasserie;
    }

    /**
     * @param brasserie
     */
    public void setBrasserie(Brasserie brasserie) {
        this.brasserie = brasserie;
    }

    @Override
    public String toString() {
        return "Marque{" +
                "nomMarique='" + this.getNomMarique() + '\'' +
                ", brasserie=" + this.getBrasserie() +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Marque)) return false;
        Marque marque = (Marque) o;
        return Objects.equals(getNomMarique(), marque.getNomMarique()) && Objects.equals(getBrasserie(), marque.getBrasserie());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getNomMarique(), getBrasserie());
    }
}
