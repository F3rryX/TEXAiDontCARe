package com.texa.carelib.webservices.internal;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Build;
import com.texa.careapp.utils.DateTypeAdapter;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.care.vehicletroubles.DTCStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.webservices.DTCTranslationCompletedEvent;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceDTCResolutionProcedure;
import com.texa.carelib.webservices.utils.internal.DTCSupport;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class MockServiceDTCResolutionProcedure implements ServiceDTCResolutionProcedure {
    private static final String ECU_OBD = "_OBD";
    private static final String KEY_DETAIL = "detail";
    private static final String KEY_HELP = "help";
    private static final int RESOLVE_DTC_DELAY = 2000;
    public static final String TAG = "MockServiceDTCResolutionProcedure";
    private final Context mContext;
    private final Map<String, DTC> mTranslations = new HashMap();

    public MockServiceDTCResolutionProcedure(Context context) {
        this.mContext = context;
        initTranslations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String escapeJSON(String str) {
        if (str == null) {
            return null;
        }
        String[][] strArr = {new String[]{"\\", "\\\\"}, new String[]{"\"", "\\\""}};
        for (int i = 0; i < 2; i++) {
            String[] strArr2 = strArr[i];
            str = str.replace(strArr2[0], strArr2[1]);
        }
        return str;
    }

    private void initTranslations() {
        addDTCToCollection(this.mTranslations, "1", "C9w4+3Znf9b0O6cnq3kKTQ==", "P0001", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.1
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.1.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.mock_p0001_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, null);
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.1.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.mock_p0001_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, null);
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "412", "pOD9B3Ey9Cy2xF48GC9iuA==", "P0119", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.2
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.2.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.mock_p0119_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, null);
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.2.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.mock_p0119_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, null);
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "135", "P0042", "P0042", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.3
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.3.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0042_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0042_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.3.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0042_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0042_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "137", "P0043", "P0043", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.4
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.4.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0043_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0043_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.4.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0043_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0043_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "683", "P0215", "P0215", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.5
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.5.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0215_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0215_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.5.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0215_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0215_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "692", "P0219", "P0219", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.6
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.6.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0219_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0219_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.6.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0219_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0219_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "921", "P0298", "P0298", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.7
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.7.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0298_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0298_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.7.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0298_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0298_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "1135", "P0313", "P0313", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.8
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.8.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0313_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0313_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.8.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0313_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0313_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "1402", "P0421", "P0421", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.9
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.9.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0421_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0421_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.9.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0421_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0421_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "2115", "P0657", "P0657", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.10
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.10.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0657_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0657_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.10.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0657_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0657_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "2237", "P0692", "P0692", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.11
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.11.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0692_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p0692_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.11.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0692_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p0692_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "2326", "P070F", "P070F", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.12
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.12.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p070f_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p070f_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.12.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p070f_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p070f_help)));
                    }
                });
            }
        });
        addDTCToCollection(this.mTranslations, "6815", "P2261", "P2261", ECU_OBD, new HashMap<Locale, Map<String, String>>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.13
            {
                put(Locale.ITALIAN, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.13.1
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p2261_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ITALIAN, R.string.p2261_help)));
                    }
                });
                put(Locale.ENGLISH, new HashMap<String, String>() { // from class: com.texa.carelib.webservices.internal.MockServiceDTCResolutionProcedure.13.2
                    {
                        put(MockServiceDTCResolutionProcedure.KEY_DETAIL, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p2261_detail)));
                        put(MockServiceDTCResolutionProcedure.KEY_HELP, MockServiceDTCResolutionProcedure.this.escapeJSON(MockServiceDTCResolutionProcedure.this.getLocalizedString(Locale.ENGLISH, R.string.p2261_help)));
                    }
                });
            }
        });
    }

    private void addDTCToCollection(Map<String, DTC> map, String str, String str2, String str3, String str4, Map<Locale, Map<String, String>> map2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.US);
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        Iterator<Map.Entry<Locale, Map<String, String>>> it = map2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Locale, Map<String, String>> next = it.next();
            sb.append("\"");
            sb.append(next.getKey().getLanguage());
            sb.append("\": ");
            sb.append("{");
            Iterator<Map.Entry<String, String>> it2 = next.getValue().entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, String> next2 = it2.next();
                sb.append("\"");
                sb.append(next2.getKey());
                sb.append("\":");
                if (next2.getValue() != null) {
                    sb.append("\"");
                    sb.append(next2.getValue());
                    sb.append("\"");
                } else {
                    sb.append("null");
                }
                if (it2.hasNext()) {
                    sb.append(",");
                }
            }
            sb.append("}");
            if (it.hasNext()) {
                sb.append(",");
            }
        }
        sb.append("}");
        map.put(str2, DTCSupport.fromJSON(String.format("{\"dtc_token\":\"%s\",\"dtc_id\":%s,\"code\":\"%s\",\"ecu\":\"%s\",\"status\":\"%s\",\"timestamp\":\"%s\",\"descriptions\": %s}", str2, str, str3, str4, "ACTIVE", simpleDateFormat.format(Calendar.getInstance().getTime()), sb)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLocalizedString(Locale locale, int i) {
        Resources resources;
        Resources resources2 = this.mContext.getResources();
        if (resources2 == null) {
            return null;
        }
        Configuration configuration = new Configuration(resources2.getConfiguration());
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(locale);
            resources = this.mContext.createConfigurationContext(configuration).getResources();
        } else {
            configuration.locale = locale;
            resources = new Resources(resources2.getAssets(), resources2.getDisplayMetrics(), configuration);
        }
        return resources.getString(i);
    }

    @Override // com.texa.carelib.webservices.ServiceDTCResolutionProcedure
    public synchronized void resolveDTCIDs(Map<String, DTCDetail> map, Locale[] localeArr, String str, Date date, Callback<DTCTranslationCompletedEvent> callback) {
        new DTCTranslationTask(this.mTranslations, map, localeArr, str, date, callback).execute(new Void[0]);
    }

    private static class DTCTranslationTask extends AsyncTask<Void, Void, List<DTC>> {
        private Callback<DTCTranslationCompletedEvent> mCallback;
        private Map<String, DTCDetail> mDTCIDs;
        private Date mDate;
        private CareError mError = null;
        private Locale[] mLanguages;
        private String mSerialNumber;
        private final Map<String, DTC> mTranslations;

        DTCTranslationTask(Map<String, DTC> map, Map<String, DTCDetail> map2, Locale[] localeArr, String str, Date date, Callback<DTCTranslationCompletedEvent> callback) {
            this.mTranslations = map;
            this.mDTCIDs = map2;
            this.mLanguages = localeArr;
            this.mDate = date;
            this.mSerialNumber = str;
            this.mCallback = callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<DTC> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            Map<String, DTCDetail> map = this.mDTCIDs;
            if (map != null && !map.isEmpty()) {
                try {
                    Thread.sleep(2000L);
                    for (Map.Entry<String, DTCDetail> entry : this.mDTCIDs.entrySet()) {
                        DTC dtcResolveDTC = resolveDTC(entry.getKey(), entry.getValue().getStatus(), this.mDate);
                        if (dtcResolveDTC != null) {
                            arrayList.add(dtcResolveDTC);
                        }
                    }
                    return arrayList;
                } catch (Exception e) {
                    CareLog.e(MockServiceDTCResolutionProcedure.TAG, e, "Generic error.", new Object[0]);
                    this.mError = new CareError.Builder(2, 7).setException(e).build();
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<DTC> list) {
            if (list != null) {
                this.mCallback.onCompleted(new DTCTranslationCompletedEvent(this, new ArrayList(list), this.mError));
            } else {
                this.mCallback.onCompleted(new DTCTranslationCompletedEvent(this, Collections.emptyList(), this.mError));
            }
        }

        private DTC resolveDTC(String str, DTCStatus dTCStatus, Date date) {
            if (this.mTranslations.get(str) == null) {
                return null;
            }
            DTC.Builder builder = new DTC.Builder(this.mTranslations.get(str));
            builder.setStatus(dTCStatus);
            builder.setAcquisitionDate(date);
            return builder.build();
        }
    }
}
