package com.texa.carelib.diagresources;

import android.util.LongSparseArray;

/* JADX INFO: loaded from: classes2.dex */
public enum ECUType {
    OBD(0, "_OBD"),
    BAT(1, "BAT"),
    BOD(2, "BOD"),
    CLM(3, "CLM"),
    CLP(4, "CLP"),
    CMF(5, "CMF"),
    CPO(6, "CPO"),
    CRB(7, "CRB"),
    DPY(8, "DPY"),
    DVG(9, "DVG"),
    HYB(10, "HYB"),
    IM2(11, "IM2"),
    INB(12, "INB"),
    IND(13, "IND"),
    PEY(14, "PEY"),
    PLP(15, "PLP"),
    POR(16, "POR"),
    PPD(17, "PPD"),
    PPN(18, "PPN"),
    PPS(19, "PPS"),
    SCE(20, "SCE"),
    SCT(21, "SCT"),
    SMN(22, "SMN"),
    SSO(23, "SSO"),
    SSV(24, "SSV"),
    STR(25, "STR"),
    GTW(26, "GTW"),
    GPA(27, "GPA"),
    ILL(28, "ILL"),
    ING(29, "ING"),
    MOT(30, "MOT"),
    BHY(31, "BHY"),
    CIN(32, "CIN"),
    MCB(33, "MCB"),
    SAM(34, "SAM"),
    SA2(35, "SA2"),
    SA3(36, "SA3"),
    SA4(37, "SA4"),
    SA1(38, "SA1"),
    PCS(39, "PCS"),
    PCI(40, "PCI"),
    PCT(41, "PCT"),
    PCC(42, "PCC"),
    PCP(43, "PCP"),
    CME(44, "CME"),
    MCS(45, "MCS"),
    GMR(46, "GMR"),
    SAI(47, "SAI"),
    BO1(48, "BO1"),
    BO2(49, "BO2"),
    BO3(50, "BO3"),
    BO4(51, "BO4"),
    BO5(52, "BO5"),
    BO6(53, "BO6"),
    MCA(54, "MCA"),
    GTA(55, "GTA"),
    CNG(56, "CNG"),
    LPG(57, "GPL"),
    SDA(58, "SDA"),
    CAT(59, "CAT"),
    BRK(60, "BRK"),
    CTC(61, "CTC"),
    IN2(62, "IN2"),
    RAD(63, "RAD"),
    RMV(64, "RMV"),
    RIS(65, "RIS"),
    SPS(66, "SPS"),
    SFF(67, "SFF"),
    GPS(68, "GPS");

    private static final LongSparseArray<ECUType> dataIDMap = new LongSparseArray<>();
    private long mId;
    private String mName;

    static {
        for (ECUType eCUType : values()) {
            dataIDMap.put(eCUType.getId(), eCUType);
        }
    }

    ECUType(long j, String str) {
        this.mId = j;
        this.mName = str;
    }

    public long getId() {
        return this.mId;
    }

    public String getName() {
        return this.mName;
    }

    public static ECUType findById(long j) {
        return dataIDMap.get(j, null);
    }
}
