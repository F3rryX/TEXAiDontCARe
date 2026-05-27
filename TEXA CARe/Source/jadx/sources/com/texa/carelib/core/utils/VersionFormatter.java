package com.texa.carelib.core.utils;

import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class VersionFormatter {
    private static final String VERSION_UNDEFINED = StringUtils.join(new int[]{0, 0, 0, 0}, Version.SEPARATOR);

    public static String formatShort(Version version) {
        if (version == null || version.getMajor() == null) {
            return VERSION_UNDEFINED;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("" + version.getMajor());
        if (version.getMinor() != null) {
            arrayList.add("" + version.getMinor());
            if (version.getBuild() != null) {
                arrayList.add("" + version.getBuild());
                if (version.getRevision() != null) {
                    arrayList.add("" + version.getRevision());
                }
            }
        }
        return StringUtils.join(arrayList, Version.SEPARATOR);
    }

    public static String formatLong(FirmwareVersion firmwareVersion) {
        if (firmwareVersion == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (!StringUtils.isNullOrEmpty(firmwareVersion.getProductName())) {
            if (!sb.toString().endsWith("_")) {
                sb.append("_");
            }
            sb.append(firmwareVersion.getProductName());
        }
        if (!StringUtils.isNullOrEmpty(firmwareVersion.getCustomerName())) {
            if (!sb.toString().endsWith("_")) {
                sb.append("_");
            }
            sb.append(firmwareVersion.getCustomerName());
        }
        if (!StringUtils.isNullOrEmpty(firmwareVersion.getApplicationName())) {
            if (!sb.toString().endsWith("_")) {
                sb.append("_");
            }
            sb.append(firmwareVersion.getApplicationName());
        }
        if (!StringUtils.isNullOrEmpty(firmwareVersion.getBoardName())) {
            if (!sb.toString().endsWith("_")) {
                sb.append("_");
            }
            sb.append(firmwareVersion.getBoardName());
        }
        if (!sb.toString().endsWith("_")) {
            sb.append("_");
        }
        sb.append(formatShort(firmwareVersion.getVersion()));
        return sb.toString().trim().substring(1);
    }
}
