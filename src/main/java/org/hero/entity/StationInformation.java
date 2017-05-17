package org.hero.entity;

/**基站信息
 * Created by lsd on 2017-05-17.
 */
public class StationInformation {
    private Integer id;
    private Integer ENodeBID;
    private float Longitude;
    private float Latitude;
    private Integer Azimuth;
    private String Supplier;

    @Override
    public String toString() {
        return "StationInformation{" +
                "id=" + id +
                ", ENodeBID=" + ENodeBID +
                ", Longitude=" + Longitude +
                ", Latitude=" + Latitude +
                ", Azimuth=" + Azimuth +
                ", Supplier='" + Supplier + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getENodeBID() {
        return ENodeBID;
    }

    public void setENodeBID(Integer ENodeBID) {
        this.ENodeBID = ENodeBID;
    }

    public float getLongitude() {
        return Longitude;
    }

    public void setLongitude(float longitude) {
        Longitude = longitude;
    }

    public float getLatitude() {
        return Latitude;
    }

    public void setLatitude(float latitude) {
        Latitude = latitude;
    }

    public Integer getAzimuth() {
        return Azimuth;
    }

    public void setAzimuth(Integer azimuth) {
        Azimuth = azimuth;
    }

    public String getSupplier() {
        return Supplier;
    }

    public void setSupplier(String supplier) {
        Supplier = supplier;
    }
}
