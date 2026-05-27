package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import io.reactivex.internal.operators.observable.ObservableReplay;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import kotlin.text.Typography;
import okio.internal.BufferKt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
/* JADX INFO: loaded from: classes.dex */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaf = {'u', 'l', 'l'};
    private static final char[] zag = {'r', 'u', 'e'};
    private static final char[] zah = {'r', 'u', 'e', Typography.quote};
    private static final char[] zai = {'a', 'l', 's', 'e'};
    private static final char[] zaj = {'a', 'l', 's', 'e', Typography.quote};
    private static final char[] zak = {'\n'};
    private static final zaa<Integer> zam = new zab();
    private static final zaa<Long> zan = new com.google.android.gms.common.server.response.zaa();
    private static final zaa<Float> zao = new zad();
    private static final zaa<Double> zap = new zac();
    private static final zaa<Boolean> zaq = new zaf();
    private static final zaa<String> zar = new zae();
    private static final zaa<BigInteger> zas = new zah();
    private static final zaa<BigDecimal> zat = new zag();
    private final char[] zaa = new char[1];
    private final char[] zab = new char[32];
    private final char[] zac = new char[1024];
    private final StringBuilder zad = new StringBuilder(32);
    private final StringBuilder zae = new StringBuilder(1024);
    private final Stack<Integer> zal = new Stack<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
    interface zaa<O> {
        O zaa(FastParser fastParser, BufferedReader bufferedReader) throws ParseException, IOException;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(str, th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }

    public void parse(InputStream inputStream, T t) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zal.push(0);
                char cZaj = zaj(bufferedReader);
                if (cZaj == 0) {
                    throw new ParseException("No data to parse");
                }
                if (cZaj == '[') {
                    this.zal.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t.addConcreteTypeArrayInternal(value, value.zae, zaa(bufferedReader, value));
                } else if (cZaj == '{') {
                    this.zal.push(1);
                    zaa(bufferedReader, t);
                } else {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(cZaj);
                    throw new ParseException(sb.toString());
                }
                zaa(0);
            } catch (IOException e) {
                throw new ParseException(e);
            }
        } finally {
            try {
                bufferedReader.close();
            } catch (IOException unused) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:138:0x029b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x027d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zaa(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        int i;
        HashMap map;
        char cZaj;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String strZaa = zaa(bufferedReader);
        if (strZaa == null) {
            zaa(1);
            return false;
        }
        while (strZaa != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(strZaa);
            if (field == null) {
                strZaa = zab(bufferedReader);
            } else {
                this.zal.push(4);
                switch (field.zaa) {
                    case 0:
                        if (field.zab) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, (ArrayList<Integer>) zaa(bufferedReader, zam));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zad(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                            strZaa = zaa(bufferedReader);
                        } else {
                            if (cZaj != '}') {
                                StringBuilder sb = new StringBuilder(55);
                                sb.append("Expected end of object or field separator, but found: ");
                                sb.append(cZaj);
                                throw new ParseException(sb.toString());
                            }
                            strZaa = null;
                        }
                        break;
                    case 1:
                        if (field.zab) {
                            fastJsonResponse.zab((FastJsonResponse.Field) field, (ArrayList<BigInteger>) zaa(bufferedReader, zas));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zaf(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 2:
                        if (field.zab) {
                            fastJsonResponse.zac(field, zaa(bufferedReader, zan));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zae(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 3:
                        if (field.zab) {
                            fastJsonResponse.zad(field, zaa(bufferedReader, zao));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zag(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 4:
                        if (field.zab) {
                            fastJsonResponse.zae(field, zaa(bufferedReader, zap));
                        } else {
                            fastJsonResponse.zaa(field, zah(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 5:
                        if (field.zab) {
                            fastJsonResponse.zaf(field, zaa(bufferedReader, zat));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zai(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 6:
                        if (field.zab) {
                            fastJsonResponse.zag(field, zaa(bufferedReader, zaq));
                            i = 4;
                            zaa(i);
                            zaa(2);
                            cZaj = zaj(bufferedReader);
                            if (cZaj != ',') {
                            }
                        } else {
                            fastJsonResponse.zaa(field, zaa(bufferedReader, false));
                            i = 4;
                            zaa(i);
                            zaa(2);
                            cZaj = zaj(bufferedReader);
                            if (cZaj != ',') {
                            }
                        }
                        break;
                    case 7:
                        if (field.zab) {
                            fastJsonResponse.zah(field, zaa(bufferedReader, zar));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zac(bufferedReader));
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 8:
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, Base64Utils.decode(zaa(bufferedReader, this.zac, this.zae, zak)));
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 9:
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, Base64Utils.decodeUrlSafe(zaa(bufferedReader, this.zac, this.zae, zak)));
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 10:
                        char cZaj2 = zaj(bufferedReader);
                        if (cZaj2 == 'n') {
                            zab(bufferedReader, zaf);
                            map = null;
                        } else {
                            if (cZaj2 != '{') {
                                throw new ParseException("Expected start of a map object");
                            }
                            this.zal.push(1);
                            map = new HashMap();
                            while (true) {
                                char cZaj3 = zaj(bufferedReader);
                                if (cZaj3 == 0) {
                                    throw new ParseException("Unexpected EOF");
                                }
                                if (cZaj3 == '\"') {
                                    String strZab = zab(bufferedReader, this.zab, this.zad, null);
                                    if (zaj(bufferedReader) != ':') {
                                        String strValueOf = String.valueOf(strZab);
                                        throw new ParseException(strValueOf.length() != 0 ? "No map value found for key ".concat(strValueOf) : new String("No map value found for key "));
                                    }
                                    if (zaj(bufferedReader) != '\"') {
                                        String strValueOf2 = String.valueOf(strZab);
                                        throw new ParseException(strValueOf2.length() != 0 ? "Expected String value for key ".concat(strValueOf2) : new String("Expected String value for key "));
                                    }
                                    map.put(strZab, zab(bufferedReader, this.zab, this.zad, null));
                                    char cZaj4 = zaj(bufferedReader);
                                    if (cZaj4 != ',') {
                                        if (cZaj4 == '}') {
                                            zaa(1);
                                        } else {
                                            StringBuilder sb2 = new StringBuilder(48);
                                            sb2.append("Unexpected character while parsing string map: ");
                                            sb2.append(cZaj4);
                                            throw new ParseException(sb2.toString());
                                        }
                                    }
                                } else if (cZaj3 == '}') {
                                    zaa(1);
                                }
                                i = 4;
                                zaa(i);
                                zaa(2);
                                cZaj = zaj(bufferedReader);
                                if (cZaj != ',') {
                                }
                            }
                        }
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, (Map<String, String>) map);
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    case 11:
                        if (field.zab) {
                            char cZaj5 = zaj(bufferedReader);
                            if (cZaj5 == 'n') {
                                zab(bufferedReader, zaf);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                            } else {
                                this.zal.push(5);
                                if (cZaj5 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zaa(bufferedReader, field));
                            }
                        } else {
                            char cZaj6 = zaj(bufferedReader);
                            if (cZaj6 != 'n') {
                                this.zal.push(1);
                                if (cZaj6 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse fastJsonResponseZac = field.zac();
                                    zaa(bufferedReader, fastJsonResponseZac);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, fastJsonResponseZac);
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            } else {
                                zab(bufferedReader, zaf);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                            }
                            break;
                        }
                        i = 4;
                        zaa(i);
                        zaa(2);
                        cZaj = zaj(bufferedReader);
                        if (cZaj != ',') {
                        }
                        break;
                    default:
                        int i2 = field.zaa;
                        StringBuilder sb3 = new StringBuilder(30);
                        sb3.append("Invalid field type ");
                        sb3.append(i2);
                        throw new ParseException(sb3.toString());
                }
            }
        }
        zaa(1);
        return true;
    }

    private final String zaa(BufferedReader bufferedReader) throws ParseException, IOException {
        this.zal.push(2);
        char cZaj = zaj(bufferedReader);
        if (cZaj == '\"') {
            this.zal.push(3);
            String strZab = zab(bufferedReader, this.zab, this.zad, null);
            zaa(3);
            if (zaj(bufferedReader) == ':') {
                return strZab;
            }
            throw new ParseException("Expected key/value separator");
        }
        if (cZaj == ']') {
            zaa(2);
            zaa(1);
            zaa(5);
            return null;
        }
        if (cZaj == '}') {
            zaa(2);
            return null;
        }
        StringBuilder sb = new StringBuilder(19);
        sb.append("Unexpected token: ");
        sb.append(cZaj);
        throw new ParseException(sb.toString());
    }

    private final String zab(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char cZaj = zaj(bufferedReader);
        if (cZaj == '\"') {
            if (bufferedReader.read(this.zaa) == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            char c = this.zaa[0];
            boolean z = false;
            do {
                if (c != '\"' || z) {
                    z = c == '\\' ? !z : false;
                    if (bufferedReader.read(this.zaa) == -1) {
                        throw new ParseException("Unexpected EOF while parsing string");
                    }
                    c = this.zaa[0];
                }
            } while (!Character.isISOControl(c));
            throw new ParseException("Unexpected control character while reading string");
        }
        if (cZaj == ',') {
            throw new ParseException("Missing value");
        }
        int i = 1;
        if (cZaj == '[') {
            this.zal.push(5);
            bufferedReader.mark(32);
            if (zaj(bufferedReader) == ']') {
                zaa(5);
            } else {
                bufferedReader.reset();
                boolean z2 = false;
                boolean z3 = false;
                while (i > 0) {
                    char cZaj2 = zaj(bufferedReader);
                    if (cZaj2 == 0) {
                        throw new ParseException("Unexpected EOF while parsing array");
                    }
                    if (Character.isISOControl(cZaj2)) {
                        throw new ParseException("Unexpected control character while reading array");
                    }
                    if (cZaj2 == '\"' && !z2) {
                        z3 = !z3;
                    }
                    if (cZaj2 == '[' && !z3) {
                        i++;
                    }
                    if (cZaj2 == ']' && !z3) {
                        i--;
                    }
                    z2 = (cZaj2 == '\\' && z3) ? !z2 : false;
                }
                zaa(5);
            }
        } else if (cZaj == '{') {
            this.zal.push(1);
            bufferedReader.mark(32);
            char cZaj3 = zaj(bufferedReader);
            if (cZaj3 == '}') {
                zaa(1);
            } else if (cZaj3 == '\"') {
                bufferedReader.reset();
                zaa(bufferedReader);
                while (zab(bufferedReader) != null) {
                }
                zaa(1);
            } else {
                StringBuilder sb = new StringBuilder(18);
                sb.append("Unexpected token ");
                sb.append(cZaj3);
                throw new ParseException(sb.toString());
            }
        } else {
            bufferedReader.reset();
            zaa(bufferedReader, this.zac);
        }
        char cZaj4 = zaj(bufferedReader);
        if (cZaj4 == ',') {
            zaa(2);
            return zaa(bufferedReader);
        }
        if (cZaj4 == '}') {
            zaa(2);
            return null;
        }
        StringBuilder sb2 = new StringBuilder(18);
        sb2.append("Unexpected token ");
        sb2.append(cZaj4);
        throw new ParseException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zac(BufferedReader bufferedReader) throws ParseException, IOException {
        return zaa(bufferedReader, this.zab, this.zad, null);
    }

    private final <O> ArrayList<O> zaa(BufferedReader bufferedReader, zaa<O> zaaVar) throws ParseException, IOException {
        char cZaj = zaj(bufferedReader);
        if (cZaj == 'n') {
            zab(bufferedReader, zaf);
            return null;
        }
        if (cZaj != '[') {
            throw new ParseException("Expected start of array");
        }
        this.zal.push(5);
        ArrayList<O> arrayList = new ArrayList<>();
        while (true) {
            bufferedReader.mark(1024);
            char cZaj2 = zaj(bufferedReader);
            if (cZaj2 == 0) {
                throw new ParseException("Unexpected EOF");
            }
            if (cZaj2 != ',') {
                if (cZaj2 == ']') {
                    zaa(5);
                    return arrayList;
                }
                bufferedReader.reset();
                arrayList.add(zaaVar.zaa(this, bufferedReader));
            }
        }
    }

    private final String zaa(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        char cZaj = zaj(bufferedReader);
        if (cZaj == '\"') {
            return zab(bufferedReader, cArr, sb, cArr2);
        }
        if (cZaj == 'n') {
            zab(bufferedReader, zaf);
            return null;
        }
        throw new ParseException("Expected string");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0030 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String zab(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        boolean z;
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            int i = bufferedReader.read(cArr);
            if (i != -1) {
                for (int i2 = 0; i2 < i; i2++) {
                    char c = cArr[i2];
                    if (Character.isISOControl(c)) {
                        if (cArr2 != null) {
                            for (char c2 : cArr2) {
                                if (c2 == c) {
                                    z = true;
                                    break;
                                }
                            }
                            z = false;
                            if (!z) {
                                throw new ParseException("Unexpected control character while reading string");
                            }
                        } else {
                            z = false;
                            if (!z) {
                            }
                        }
                    }
                    if (c == '\"' && !z2) {
                        sb.append(cArr, 0, i2);
                        bufferedReader.reset();
                        bufferedReader.skip(i2 + 1);
                        if (z3) {
                            return JsonUtils.unescapeString(sb.toString());
                        }
                        return sb.toString();
                    }
                    if (c == '\\') {
                        z2 = !z2;
                        z3 = true;
                    } else {
                        z2 = false;
                    }
                }
                sb.append(cArr, 0, i);
                bufferedReader.mark(cArr.length);
            } else {
                throw new ParseException("Unexpected EOF while parsing string");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zad(BufferedReader bufferedReader) throws ParseException, IOException {
        int i;
        int i2;
        boolean z;
        int iZaa = zaa(bufferedReader, this.zac);
        int i3 = 0;
        if (iZaa == 0) {
            return 0;
        }
        char[] cArr = this.zac;
        if (iZaa > 0) {
            if (cArr[0] == '-') {
                i = Integer.MIN_VALUE;
                i2 = 1;
                z = true;
            } else {
                i = -2147483647;
                i2 = 0;
                z = false;
            }
            if (i2 < iZaa) {
                int i4 = i2 + 1;
                int iDigit = Character.digit(cArr[i2], 10);
                if (iDigit < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                int i5 = -iDigit;
                i2 = i4;
                i3 = i5;
            }
            while (i2 < iZaa) {
                int i6 = i2 + 1;
                int iDigit2 = Character.digit(cArr[i2], 10);
                if (iDigit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                if (i3 < -214748364) {
                    throw new ParseException("Number too large");
                }
                int i7 = i3 * 10;
                if (i7 < i + iDigit2) {
                    throw new ParseException("Number too large");
                }
                i3 = i7 - iDigit2;
                i2 = i6;
            }
            if (!z) {
                return -i3;
            }
            if (i2 > 1) {
                return i3;
            }
            throw new ParseException("No digits to parse");
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zae(BufferedReader bufferedReader) throws ParseException, IOException {
        long j;
        boolean z;
        int iZaa = zaa(bufferedReader, this.zac);
        long j2 = 0;
        if (iZaa == 0) {
            return 0L;
        }
        char[] cArr = this.zac;
        if (iZaa > 0) {
            int i = 0;
            if (cArr[0] == '-') {
                j = Long.MIN_VALUE;
                i = 1;
                z = true;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            if (i < iZaa) {
                int i2 = i + 1;
                int iDigit = Character.digit(cArr[i], 10);
                if (iDigit < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                i = i2;
                j2 = -iDigit;
            }
            while (i < iZaa) {
                int i3 = i + 1;
                int iDigit2 = Character.digit(cArr[i], 10);
                if (iDigit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                if (j2 < BufferKt.OVERFLOW_ZONE) {
                    throw new ParseException("Number too large");
                }
                long j3 = j2 * 10;
                long j4 = iDigit2;
                if (j3 < j + j4) {
                    throw new ParseException("Number too large");
                }
                j2 = j3 - j4;
                i = i3;
            }
            if (!z) {
                return -j2;
            }
            if (i > 1) {
                return j2;
            }
            throw new ParseException("No digits to parse");
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigInteger zaf(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zac);
        if (iZaa == 0) {
            return null;
        }
        return new BigInteger(new String(this.zac, 0, iZaa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zaa(BufferedReader bufferedReader, boolean z) throws ParseException, IOException {
        while (true) {
            char cZaj = zaj(bufferedReader);
            if (cZaj != '\"') {
                if (cZaj == 'f') {
                    zab(bufferedReader, z ? zaj : zai);
                    return false;
                }
                if (cZaj == 'n') {
                    zab(bufferedReader, zaf);
                    return false;
                }
                if (cZaj == 't') {
                    zab(bufferedReader, z ? zah : zag);
                    return true;
                }
                StringBuilder sb = new StringBuilder(19);
                sb.append("Unexpected token: ");
                sb.append(cZaj);
                throw new ParseException(sb.toString());
            }
            if (z) {
                throw new ParseException("No boolean value found in string");
            }
            z = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float zag(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zac);
        if (iZaa == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zac, 0, iZaa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double zah(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zac);
        if (iZaa == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.zac, 0, iZaa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigDecimal zai(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zac);
        if (iZaa == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zac, 0, iZaa));
    }

    private final <T extends FastJsonResponse> ArrayList<T> zaa(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) throws ParseException, IOException {
        ObservableReplay.UnboundedReplayBuffer unboundedReplayBuffer = (ArrayList<T>) new ArrayList();
        char cZaj = zaj(bufferedReader);
        if (cZaj == ']') {
            zaa(5);
            return unboundedReplayBuffer;
        }
        if (cZaj == 'n') {
            zab(bufferedReader, zaf);
            zaa(5);
            return null;
        }
        if (cZaj == '{') {
            this.zal.push(1);
            while (true) {
                try {
                    FastJsonResponse fastJsonResponseZac = field.zac();
                    if (!zaa(bufferedReader, fastJsonResponseZac)) {
                        return unboundedReplayBuffer;
                    }
                    unboundedReplayBuffer.add(fastJsonResponseZac);
                    char cZaj2 = zaj(bufferedReader);
                    if (cZaj2 != ',') {
                        if (cZaj2 == ']') {
                            zaa(5);
                            return unboundedReplayBuffer;
                        }
                        StringBuilder sb = new StringBuilder(19);
                        sb.append("Unexpected token: ");
                        sb.append(cZaj2);
                        throw new ParseException(sb.toString());
                    }
                    if (zaj(bufferedReader) != '{') {
                        throw new ParseException("Expected start of next object in array");
                    }
                    this.zal.push(1);
                } catch (IllegalAccessException e) {
                    throw new ParseException("Error instantiating inner object", e);
                } catch (InstantiationException e2) {
                    throw new ParseException("Error instantiating inner object", e2);
                }
            }
        } else {
            StringBuilder sb2 = new StringBuilder(19);
            sb2.append("Unexpected token: ");
            sb2.append(cZaj);
            throw new ParseException(sb2.toString());
        }
    }

    private final char zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.zaa) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zaa[0])) {
            if (bufferedReader.read(this.zaa) == -1) {
                return (char) 0;
            }
        }
        return this.zaa[0];
    }

    private final int zaa(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i;
        char cZaj = zaj(bufferedReader);
        if (cZaj == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (cZaj == ',') {
            throw new ParseException("Missing value");
        }
        if (cZaj == 'n') {
            zab(bufferedReader, zaf);
            return 0;
        }
        bufferedReader.mark(1024);
        if (cZaj == '\"') {
            i = 0;
            boolean z = false;
            while (i < cArr.length && bufferedReader.read(cArr, i, 1) != -1) {
                char c = cArr[i];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                if (c == '\"' && !z) {
                    bufferedReader.reset();
                    bufferedReader.skip(i + 1);
                    return i;
                }
                z = c == '\\' ? !z : false;
                i++;
            }
        } else {
            cArr[0] = cZaj;
            i = 1;
            while (i < cArr.length && bufferedReader.read(cArr, i, 1) != -1) {
                if (cArr[i] == '}' || cArr[i] == ',' || Character.isWhitespace(cArr[i]) || cArr[i] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i - 1);
                    cArr[i] = 0;
                    return i;
                }
                i++;
            }
        }
        if (i == cArr.length) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final void zab(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i = 0;
        while (i < cArr.length) {
            int i2 = bufferedReader.read(this.zab, 0, cArr.length - i);
            if (i2 == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i3 = 0; i3 < i2; i3++) {
                if (cArr[i3 + i] != this.zab[i3]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i += i2;
        }
    }

    private final void zaa(int i) throws ParseException {
        if (this.zal.isEmpty()) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Expected state ");
            sb.append(i);
            sb.append(" but had empty stack");
            throw new ParseException(sb.toString());
        }
        int iIntValue = this.zal.pop().intValue();
        if (iIntValue == i) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Expected state ");
        sb2.append(i);
        sb2.append(" but had ");
        sb2.append(iIntValue);
        throw new ParseException(sb2.toString());
    }
}
