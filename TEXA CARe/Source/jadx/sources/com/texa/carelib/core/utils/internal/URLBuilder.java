package com.texa.carelib.core.utils.internal;

import com.texa.carelib.core.logging.CareLog;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes2.dex */
public class URLBuilder {
    public static final String TAG = "URLBuilder";
    private String mHost;
    private final List<QueryItem> mItemsList;
    private String mPath;
    private String mProtocol;

    public class QueryItem {
        public static final String DEFAULT_ENCODING = "UTF-8";
        private String mEncoding;
        private String mName;
        private String mValue;

        public String getEncoding() {
            return this.mEncoding;
        }

        public QueryItem setEncoding(String str) {
            this.mEncoding = str;
            return this;
        }

        public String getName() {
            return this.mName;
        }

        public QueryItem setName(String str) {
            this.mName = str;
            return this;
        }

        public String getValue() {
            return this.mValue;
        }

        public QueryItem setValue(String str) {
            this.mValue = str;
            return this;
        }

        public QueryItem() {
            this.mName = "";
            this.mValue = "";
            this.mEncoding = "UTF-8";
        }

        public QueryItem(URLBuilder uRLBuilder, String str) {
            this();
            this.mName = str;
        }

        public QueryItem(URLBuilder uRLBuilder, String str, String str2) {
            this(uRLBuilder, str);
            this.mValue = str2;
        }

        public QueryItem(URLBuilder uRLBuilder, String str, String str2, String str3) {
            this();
            this.mName = str;
            this.mValue = str2;
            this.mEncoding = str3;
        }

        private String encode(String str, String str2) {
            try {
                return URLEncoder.encode(str, str2);
            } catch (UnsupportedEncodingException e) {
                CareLog.e(URLBuilder.TAG, e, "Encoding not supported", new Object[0]);
                return "";
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.mName;
            if (str != null) {
                sb.append(encode(str, this.mEncoding));
            }
            if (this.mValue != null) {
                sb.append('=');
                sb.append(encode(this.mValue, this.mEncoding));
            }
            return sb.toString();
        }
    }

    public String getProtocol() {
        return this.mProtocol;
    }

    public URLBuilder setProtocol(String str) {
        this.mProtocol = str;
        return this;
    }

    public String getHost() {
        return this.mHost;
    }

    public URLBuilder setHost(String str) {
        this.mHost = str;
        return this;
    }

    public String getPath() {
        return this.mPath;
    }

    public URLBuilder setPath(String str) {
        this.mPath = str;
        return this;
    }

    public URLBuilder() {
        this.mItemsList = new ArrayList();
    }

    public URLBuilder(String str, String str2, String str3) {
        this();
        this.mProtocol = str;
        this.mHost = str2;
        this.mPath = str3;
    }

    public void addQueryItem(String str, String str2) {
        addQueryItem(new QueryItem(this, str, str2));
    }

    public void addQueryItem(QueryItem queryItem) {
        this.mItemsList.add(queryItem);
    }

    public void clearQueryItems() {
        this.mItemsList.clear();
    }

    public void removeQueryItem(QueryItem queryItem) {
        this.mItemsList.remove(queryItem);
    }

    public URL getURL() throws MalformedURLException {
        StringBuilder sb = new StringBuilder();
        Iterator<QueryItem> it = this.mItemsList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append(Typography.amp);
        }
        String strSubstring = this.mPath;
        if (sb.length() > 0) {
            if (strSubstring.endsWith("/")) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
            }
            strSubstring = (strSubstring + "?" + sb.toString()).substring(0, r0.length() - 1);
        }
        return new URL(this.mProtocol, this.mHost, strSubstring);
    }

    public void addAllQueryItem(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() == null) {
                addQueryItem(entry.getKey(), "");
            } else {
                addQueryItem(entry.getKey(), entry.getValue().toString());
            }
        }
    }

    public void addAllQueryItem(Collection<? extends QueryItem> collection) {
        this.mItemsList.addAll(collection);
    }
}
