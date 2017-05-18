package org.hero.entity;

/**
 * Created by lsd on 2017-05-18.
 */
public class UploadData {
    private Integer SumUsers;
    private Integer SumFlow;
    private float Longitude;
    private float Latitude;

    @Override
    public String toString() {
        return "UploadData{" +
                "SumUsers=" + SumUsers +
                ", SumFlow=" + SumFlow +
                ", Longitude=" + Longitude +
                ", Latitude=" + Latitude +
                '}';
    }

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
}
