package org.hero.entity;

/**
 * Created by lsd on 2017-05-23.
 */
public class ZhanSummary {
    private Integer id;
    private String  ENodeBID;
    private Integer SumUsers;
    private float SumFlow;
    private String  Time;
    private String  ProtocolType;
    private Integer ProtocolNumber;
    private float   ProtocolFlow;
    private float   PageOpenRate;
    private float   PageRate;
    private float   VedioDownRate;
    private float   VedioStopRate;
    private float   MessageRate;
    private float   GameRate;

    @Override
    public String toString() {
        return "ZhanSummary{" +
                "id=" + id +
                ", ENodeBID='" + ENodeBID + '\'' +
                ", SumUsers=" + SumUsers +
                ", SumFlow=" + SumFlow +
                ", Time='" + Time + '\'' +
                ", ProtocolType='" + ProtocolType + '\'' +
                ", ProtocolNumber=" + ProtocolNumber +
                ", ProtocolFlow=" + ProtocolFlow +
                ", PageOpenRate=" + PageOpenRate +
                ", PageRate=" + PageRate +
                ", VedioDownRate=" + VedioDownRate +
                ", VedioStopRate=" + VedioStopRate +
                ", MessageRate=" + MessageRate +
                ", GameRate=" + GameRate +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getENodeBID() {
        return ENodeBID;
    }

    public void setENodeBID(String ENodeBID) {
        this.ENodeBID = ENodeBID;
    }

    public Integer getSumUsers() {
        return SumUsers;
    }

    public void setSumUsers(Integer sumUsers) {
        SumUsers = sumUsers;
    }

    public float getSumFlow() {
        return SumFlow;
    }

    public void setSumFlow(float sumFlow) {
        SumFlow = sumFlow;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String getProtocolType() {
        return ProtocolType;
    }

    public void setProtocolType(String protocolType) {
        ProtocolType = protocolType;
    }

    public Integer getProtocolNumber() {
        return ProtocolNumber;
    }

    public void setProtocolNumber(Integer protocolNumber) {
        ProtocolNumber = protocolNumber;
    }

    public float getProtocolFlow() {
        return ProtocolFlow;
    }

    public void setProtocolFlow(float protocolFlow) {
        ProtocolFlow = protocolFlow;
    }

    public float getPageOpenRate() {
        return PageOpenRate;
    }

    public void setPageOpenRate(float pageOpenRate) {
        PageOpenRate = pageOpenRate;
    }

    public float getPageRate() {
        return PageRate;
    }

    public void setPageRate(float pageRate) {
        PageRate = pageRate;
    }

    public float getVedioDownRate() {
        return VedioDownRate;
    }

    public void setVedioDownRate(float vedioDownRate) {
        VedioDownRate = vedioDownRate;
    }

    public float getVedioStopRate() {
        return VedioStopRate;
    }

    public void setVedioStopRate(float vedioStopRate) {
        VedioStopRate = vedioStopRate;
    }

    public float getMessageRate() {
        return MessageRate;
    }

    public void setMessageRate(float messageRate) {
        MessageRate = messageRate;
    }

    public float getGameRate() {
        return GameRate;
    }

    public void setGameRate(float gameRate) {
        GameRate = gameRate;
    }
}
