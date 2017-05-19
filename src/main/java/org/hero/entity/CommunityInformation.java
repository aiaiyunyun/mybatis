package org.hero.entity;

/**小区信息
 * Created by lsd on 2017-05-17.
 */
public class CommunityInformation {
    private Integer id;
    private Integer ENodeBID;
    private Integer CellID;
    private float  Longitude;
    private float  Latitude;
    private Integer SectorID;
    private Integer PCI;
    private Integer Azimuth;

    @Override
    public String toString() {
        return "CommunityInformation{" +
                "id=" + id +
                ", ENodeBID=" + ENodeBID +
                ", CellID=" + CellID +
                ", Longitude=" + Longitude +
                ", Latitude=" + Latitude +
                ", SectorID=" + SectorID +
                ", PCI=" + PCI +
                ", Azimuth=" + Azimuth +
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

    public Integer getCellID() {
        return CellID;
    }

    public void setCellID(Integer cellID) {
        CellID = cellID;
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

    public Integer getSectorID() {
        return SectorID;
    }

    public void setSectorID(Integer sectorID) {
        SectorID = sectorID;
    }

    public Integer getPCI() {
        return PCI;
    }

    public void setPCI(Integer PCI) {
        this.PCI = PCI;
    }

    public Integer getAzimuth() {
        return Azimuth;
    }

    public void setAzimuth(Integer azimuth) {
        Azimuth = azimuth;
    }
}
