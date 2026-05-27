package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzbc;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
final class zzcl {
    static String zzb(zzck zzckVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzb(zzckVar, sb, 0);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzb(zzck zzckVar, StringBuilder sb, int i) {
        boolean zEquals;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzckVar.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String strReplaceFirst = str.replaceFirst("get", "");
            boolean zBooleanValue = true;
            if (strReplaceFirst.endsWith("List") && !strReplaceFirst.endsWith("OrBuilderList") && !strReplaceFirst.equals("List")) {
                String strValueOf = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strValueOf2 = String.valueOf(strReplaceFirst.substring(1, strReplaceFirst.length() - 4));
                String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb, i, zzl(strConcat), zzbc.zzb(method2, zzckVar, new Object[0]));
                }
            }
            if (strReplaceFirst.endsWith("Map") && !strReplaceFirst.equals("Map")) {
                String strValueOf3 = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strValueOf4 = String.valueOf(strReplaceFirst.substring(1, strReplaceFirst.length() - 3));
                String strConcat2 = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb, i, zzl(strConcat2), zzbc.zzb(method3, zzckVar, new Object[0]));
                }
            }
            String strValueOf5 = String.valueOf(strReplaceFirst);
            if (((Method) map2.get(strValueOf5.length() != 0 ? "set".concat(strValueOf5) : new String("set"))) != null) {
                if (strReplaceFirst.endsWith("Bytes")) {
                    String strValueOf6 = String.valueOf(strReplaceFirst.substring(0, strReplaceFirst.length() - 5));
                    if (!map.containsKey(strValueOf6.length() != 0 ? "get".concat(strValueOf6) : new String("get"))) {
                    }
                }
                String strValueOf7 = String.valueOf(strReplaceFirst.substring(0, 1).toLowerCase());
                String strValueOf8 = String.valueOf(strReplaceFirst.substring(1));
                String strConcat3 = strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7);
                String strValueOf9 = String.valueOf(strReplaceFirst);
                Method method4 = (Method) map.get(strValueOf9.length() != 0 ? "get".concat(strValueOf9) : new String("get"));
                String strValueOf10 = String.valueOf(strReplaceFirst);
                Method method5 = (Method) map.get(strValueOf10.length() != 0 ? "has".concat(strValueOf10) : new String("has"));
                if (method4 != null) {
                    Object objZzb = zzbc.zzb(method4, zzckVar, new Object[0]);
                    if (method5 == null) {
                        if (objZzb instanceof Boolean) {
                            zEquals = !((Boolean) objZzb).booleanValue();
                        } else if (objZzb instanceof Integer) {
                            if (((Integer) objZzb).intValue() == 0) {
                            }
                        } else if (objZzb instanceof Float) {
                            if (((Float) objZzb).floatValue() == 0.0f) {
                            }
                        } else if (objZzb instanceof Double) {
                            if (((Double) objZzb).doubleValue() == 0.0d) {
                            }
                        } else if (objZzb instanceof String) {
                            zEquals = objZzb.equals("");
                        } else if (objZzb instanceof zzw) {
                            zEquals = objZzb.equals(zzw.zzeg);
                        } else if (!(objZzb instanceof zzck) ? !(objZzb instanceof Enum) || ((Enum) objZzb).ordinal() != 0 : objZzb != ((zzck) objZzb).zzbg()) {
                        }
                        if (zEquals) {
                            zBooleanValue = false;
                        }
                    } else {
                        zBooleanValue = ((Boolean) zzbc.zzb(method5, zzckVar, new Object[0])).booleanValue();
                    }
                    if (zBooleanValue) {
                        zzb(sb, i, zzl(strConcat3), objZzb);
                    }
                }
            }
        }
        if (zzckVar instanceof zzbc.zzc) {
            Iterator<Map.Entry<FieldDescriptorType, Object>> it = ((zzbc.zzc) zzckVar).zzik.iterator();
            if (it.hasNext()) {
                ((Map.Entry) it.next()).getKey();
                throw new NoSuchMethodError();
            }
        }
        zzbc zzbcVar = (zzbc) zzckVar;
        if (zzbcVar.zzih != null) {
            zzbcVar.zzih.zzb(sb, i);
        }
    }

    static final void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzdo.zzd(zzw.zzi((String) obj)));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzw) {
            sb.append(": \"");
            sb.append(zzdo.zzd((zzw) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzbc) {
            sb.append(" {");
            zzb((zzbc) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i4 = i + 2;
            zzb(sb, i4, "key", entry.getKey());
            zzb(sb, i4, "value", entry.getValue());
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        sb.append(": ");
        sb.append(obj.toString());
    }

    private static final String zzl(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }
}
