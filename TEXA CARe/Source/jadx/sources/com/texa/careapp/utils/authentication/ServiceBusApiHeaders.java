package com.texa.careapp.utils.authentication;

import com.texa.careapp.BuildConfig;
import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.careapp.utils.Utils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import okhttp3.Interceptor;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceBusApiHeaders implements Interceptor {
    private String getToken() {
        String strEncode;
        long jCurrentTimeMillis = (System.currentTimeMillis() + 60000) / 1000;
        try {
            strEncode = Utils.encode(BuildConfig.SERVICE_BUS_SHARED_ACCESS_KEY, URLEncoder.encode(BuildConfig.SERVICE_BUS_HOST, "UTF-8") + "\n" + jCurrentTimeMillis);
        } catch (Exception e) {
            e.printStackTrace();
            strEncode = null;
        }
        try {
            return String.format(TexaCareServiceBus.HEADER_AUTHORIZATION_TOKEN_FORMAT, URLEncoder.encode(BuildConfig.SERVICE_BUS_HOST, "UTF-8"), URLEncoder.encode(strEncode, "UTF-8"), Long.valueOf(jCurrentTimeMillis), URLEncoder.encode(BuildConfig.SERVICE_BUS_SHARED_ACCESS_KEY_NAME, "UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().addHeader(TexaCareServiceBus.HEADER_CONTENT_TYPE, TexaCareServiceBus.HEADER_CONTENT_TYPE_VALUE).addHeader("Authorization", getToken()).build());
    }
}
