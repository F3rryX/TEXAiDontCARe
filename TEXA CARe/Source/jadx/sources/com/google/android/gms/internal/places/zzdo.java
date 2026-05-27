package com.google.android.gms.internal.places;

/* JADX INFO: loaded from: classes.dex */
final class zzdo {
    static String zzd(zzw zzwVar) {
        zzdn zzdnVar = new zzdn(zzwVar);
        StringBuilder sb = new StringBuilder(zzdnVar.size());
        for (int i = 0; i < zzdnVar.size(); i++) {
            byte bZzi = zzdnVar.zzi(i);
            if (bZzi == 34) {
                sb.append("\\\"");
            } else if (bZzi == 39) {
                sb.append("\\'");
            } else if (bZzi != 92) {
                switch (bZzi) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bZzi < 32 || bZzi > 126) {
                            sb.append('\\');
                            sb.append((char) (((bZzi >>> 6) & 3) + 48));
                            sb.append((char) (((bZzi >>> 3) & 7) + 48));
                            sb.append((char) ((bZzi & 7) + 48));
                        } else {
                            sb.append((char) bZzi);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
