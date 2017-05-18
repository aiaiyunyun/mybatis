package org.hero.entity;

import java.util.Date;

/**
 * Created by lsd on 2017-05-18.
 */
public class QunSummary {
    private Integer id;
    private Integer QNodeBID;
    private Integer SumUsers;
    private Integer ProtocolType;
    private Integer ProtocolNumber;
    private Integer ProtocolFlow;
    private float PageOpenRate;
    private float PageRate;
    private float VedioDownRate;
    private float VedioStopRate;
    private float MessageRate;
    private float GameRate;
    private Date Time;

    @Override
    public String toString() {
        return "QunSummary{" +
                "id=" + id +
                ", QNodeBID=" + QNodeBID +
                ", SumUsers=" + SumUsers +
                ", ProtocolType=" + ProtocolType +
                ", ProtocolNumber=" + ProtocolNumber +
                ", ProtocolFlow=" + ProtocolFlow +
                ", PageOpenRate=" + PageOpenRate +
                ", PageRate=" + PageRate +
                ", VedioDownRate=" + VedioDownRate +
                ", VedioStopRate=" + VedioStopRate +
                ", MessageRate=" + MessageRate +
                ", GameRate=" + GameRate +
                ", Time='" + Time + '\'' +
                '}';
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQNodeBID() {
        return QNodeBID;
    }

    public void setQNodeBID(Integer QNodeBID) {
        this.QNodeBID = QNodeBID;
    }

    public Integer getSumUsers() {
        return SumUsers;
    }

    public void setSumUsers(Integer sumUsers) {
        SumUsers = sumUsers;
    }

    public Integer getProtocolType() {
        return ProtocolType;
    }

    public void setProtocolType(Integer protocolType) {
        ProtocolType = protocolType;
    }

    public Integer getProtocolNumber() {
        return ProtocolNumber;
    }

    public void setProtocolNumber(Integer protocolNumber) {
        ProtocolNumber = protocolNumber;
    }

    public Integer getProtocolFlow() {
        return ProtocolFlow;
    }

    public void setProtocolFlow(Integer protocolFlow) {
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

    public Date getTime() {
        return Time;
    }

    public void setTime(Date time) {
        Time = time;
    }
}
