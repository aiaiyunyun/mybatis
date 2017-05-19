package org.hero.entity;

/**
 * Created by lsd on 2017-05-18.
 */
public class UploadData {
    private Integer SumUsers;
    private Integer SumFlow;
    private float Longitude;
    private float Latitude;
    private String ENodeBID;
    private String CellID;
    private Integer Flow;

    public Integer getSumUsers() {
        return SumUsers;
    }

    public void setSumUsers(Integer sumUsers) {
        SumUsers = sumUsers;
    }

    public Integer getSumFlow() {
        return SumFlow;
    }

    public void setSumFlow(Integer sumFlow) {
        SumFlow = sumFlow;
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

    public String getENodeBID() {
        return ENodeBID;
    }

    public void setENodeBID(String ENodeBID) {
        this.ENodeBID = ENodeBID;
    }

    public String getCellID() {
        return CellID;
    }

    public void setCellID(String cellID) {
        CellID = cellID;
    }

    public Integer getFlow() {
        return Flow;
    }

    public void setFlow(Integer flow) {
        Flow = flow;
    }

    @Override
    public String toString() {
        return "UploadData{" +
                "SumUsers=" + SumUsers +
                ", SumFlow=" + SumFlow +
                ", Longitude=" + Longitude +
                ", Latitude=" + Latitude +
                ", ENodeBID='" + ENodeBID + '\'' +
                ", CellID='" + CellID + '\'' +
                ", Flow=" + Flow +
                '}';
    }
}
