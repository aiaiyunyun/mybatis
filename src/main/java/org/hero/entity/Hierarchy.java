package org.hero.entity;

/**
 * Created by lsd on 2017-05-17.
 */
public class Hierarchy {
    private Integer HID;
    private String CellName;
    private String eNodeBName;
    private  Integer eNodeBID;
    private Integer CellID;
    private float Latitude;
    private float Longitude;
    private Integer Azimuth;


    @Override
    public String toString() {
        return "Hierarchy{" +
                "HID=" + HID +
                ", CellName='" + CellName + '\'' +
                ", eNodeBName='" + eNodeBName + '\'' +
                ", eNodeBID=" + eNodeBID +
                ", CellID=" + CellID +
                ", Latitude=" + Latitude +
                ", Longitude=" + Longitude +
                ", Azimuth=" + Azimuth +
                '}';
    }

    public Integer getHID() {
        return HID;
    }

    public void setHID(Integer HID) {
        this.HID = HID;
    }

    public String getCellName() {
        return CellName;
    }

    public void setCellName(String cellName) {
        CellName = cellName;
    }

    public String geteNodeBName() {
        return eNodeBName;
    }

    public void seteNodeBName(String eNodeBName) {
        this.eNodeBName = eNodeBName;
    }

    public Integer geteNodeBID() {
        return eNodeBID;
    }

    public void seteNodeBID(Integer eNodeBID) {
        this.eNodeBID = eNodeBID;
    }

    public Integer getCellID() {
        return CellID;
    }

    public void setCellID(Integer cellID) {
        CellID = cellID;
    }

    public float getLatitude() {
        return Latitude;
    }

    public void setLatitude(float latitude) {
        Latitude = latitude;
    }

    public float getLongitude() {
        return Longitude;
    }

    public void setLongitude(float longitude) {
        Longitude = longitude;
    }

    public Integer getAzimuth() {
        return Azimuth;
    }

    public void setAzimuth(Integer azimuth) {
        Azimuth = azimuth;
    }
}
