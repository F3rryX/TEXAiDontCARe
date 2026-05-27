package com.texa.carelib.communication;

import com.texa.carelib.core.utils.internal.Hex;
import java.util.Arrays;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class Message {
    private int mCommandID;
    private UUID mID;
    private byte[] mPayload;
    private Date mReceivedTime;
    private int mStatus;

    private Message(Builder builder) {
        this.mID = builder.mID;
        this.mReceivedTime = builder.mReceivedTime;
        this.mCommandID = builder.mCommandID;
        this.mPayload = builder.mPayload;
        this.mStatus = builder.mStatus;
    }

    public UUID getID() {
        return this.mID;
    }

    public int getCommandID() {
        return this.mCommandID;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public boolean isStatusOK() {
        return getStatus() == 0;
    }

    public Date getReceivedTime() {
        return this.mReceivedTime;
    }

    public byte[] getData() {
        return this.mPayload;
    }

    public String toString() {
        return "[ cmd: 0x" + Hex.valueOf(this.mCommandID) + "(" + Commands.getName(Integer.valueOf(this.mCommandID)) + ")status: 0x" + Hex.valueOf(this.mStatus) + "(" + CommandStatus.getStatusName(Integer.valueOf(this.mStatus)) + ")]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        if (this.mID == message.mID && this.mReceivedTime == message.mReceivedTime && this.mCommandID == message.mCommandID && this.mStatus == message.mStatus) {
            return Arrays.equals(this.mPayload, message.mPayload);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.mID.hashCode() * 31) + this.mCommandID) * 31) + this.mReceivedTime.hashCode()) * 31) + this.mStatus) * 31) + Arrays.hashCode(this.mPayload);
    }

    public static class Builder {
        private int mCommandID;
        private UUID mID;
        private byte[] mPayload;
        private Date mReceivedTime;
        private int mStatus;

        public Builder() {
            this.mID = UUID.randomUUID();
            this.mCommandID = -1;
            this.mStatus = 0;
            this.mPayload = null;
            this.mReceivedTime = new Date();
        }

        public Builder(Message message) {
            this();
            this.mID = message.getID();
            this.mCommandID = message.getCommandID();
            this.mPayload = message.getData();
            this.mStatus = message.getStatus();
            this.mReceivedTime = message.getReceivedTime();
        }

        public Message build() {
            if (this.mID == null) {
                throw new IllegalStateException("Message ID not set.");
            }
            if (-1 == this.mCommandID) {
                throw new IllegalStateException("Command ID not set.");
            }
            return new Message(this);
        }

        public Builder setID(UUID uuid) {
            this.mID = uuid;
            return this;
        }

        public Builder setReceivedTime(Date date) {
            this.mReceivedTime = date;
            return this;
        }

        public Builder setCommandID(int i) {
            this.mCommandID = i;
            return this;
        }

        public Builder setStatus(int i) {
            this.mStatus = i;
            return this;
        }

        public Builder setPayload(byte[] bArr) {
            this.mPayload = bArr;
            return this;
        }
    }
}
