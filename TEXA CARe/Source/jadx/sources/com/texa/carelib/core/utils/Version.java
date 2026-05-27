package com.texa.carelib.core.utils;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class Version implements Comparable<Version> {
    public static final String SEPARATOR = ".";
    private Integer mBuild;
    private Integer mMajor;
    private Integer mMinor;
    private Integer mRevision;

    public Version() {
    }

    public Version(Integer num) {
        this();
        this.mMajor = num;
    }

    public Version(Integer num, Integer num2) {
        this(num);
        this.mMinor = num2;
    }

    public Version(Integer num, Integer num2, Integer num3) {
        this(num, num2);
        this.mBuild = num3;
    }

    public Version(Integer num, Integer num2, Integer num3, Integer num4) {
        this(num, num2, num3);
        this.mRevision = num4;
    }

    public Version(Version version) {
        this.mMajor = version.getMajor();
        this.mMinor = version.getMinor();
        this.mRevision = version.getRevision();
        this.mBuild = version.getBuild();
    }

    public Integer getMajor() {
        return this.mMajor;
    }

    public Version setMajor(Integer num) {
        this.mMajor = num;
        return this;
    }

    public Integer getMinor() {
        return this.mMinor;
    }

    public Version setMinor(Integer num) {
        this.mMinor = num;
        return this;
    }

    public Integer getRevision() {
        return this.mRevision;
    }

    public Version setRevision(Integer num) {
        this.mRevision = num;
        return this;
    }

    public Integer getBuild() {
        return this.mBuild;
    }

    public Version setBuild(Integer num) {
        this.mBuild = num;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        Integer num = this.mMajor;
        if (num == null ? version.mMajor != null : !num.equals(version.mMajor)) {
            return false;
        }
        Integer num2 = this.mMinor;
        if (num2 == null ? version.mMinor != null : !num2.equals(version.mMinor)) {
            return false;
        }
        Integer num3 = this.mRevision;
        if (num3 == null ? version.mRevision != null : !num3.equals(version.mRevision)) {
            return false;
        }
        Integer num4 = this.mBuild;
        Integer num5 = version.mBuild;
        return num4 != null ? num4.equals(num5) : num5 == null;
    }

    public int hashCode() {
        Integer num = this.mMajor;
        int iHashCode = (num != null ? num.hashCode() : 0) * 31;
        Integer num2 = this.mMinor;
        int iHashCode2 = (iHashCode + (num2 != null ? num2.hashCode() : 0)) * 31;
        Integer num3 = this.mRevision;
        int iHashCode3 = (iHashCode2 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.mBuild;
        return iHashCode3 + (num4 != null ? num4.hashCode() : 0);
    }

    @Override // java.lang.Comparable
    public int compareTo(Version version) {
        return new VersionComparator().compare(this, version);
    }

    private static class VersionComparator implements Comparator<Version> {
        private VersionComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Version version, Version version2) {
            return Integer.compare(calculateVersionValue(version), calculateVersionValue(version2));
        }

        private int calculateVersionValue(Version version) {
            int iIntValue = version.mMajor != null ? 0 + (version.mMajor.intValue() << 24) : 0;
            if (version.mMinor != null) {
                iIntValue += version.mMinor.intValue() << 16;
            }
            if (version.mBuild != null) {
                iIntValue += version.mBuild.intValue() << 8;
            }
            return version.mRevision != null ? iIntValue + version.mRevision.intValue() : iIntValue;
        }
    }

    public String toString() {
        return "Version{mMajor=" + this.mMajor + ", mMinor=" + this.mMinor + ", mBuild=" + this.mBuild + ", mRevision=" + this.mRevision + '}';
    }
}
