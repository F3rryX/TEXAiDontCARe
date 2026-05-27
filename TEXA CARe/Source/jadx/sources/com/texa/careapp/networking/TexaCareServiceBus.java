package com.texa.careapp.networking;

import com.texa.careapp.model.ServerLogModel;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes2.dex */
public interface TexaCareServiceBus {
    public static final String HEADER_AUTHORIZATION = "Authorization";
    public static final String HEADER_AUTHORIZATION_TOKEN_FORMAT = "SharedAccessSignature sr=%s&sig=%s&se=%s&skn=%s";
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final String HEADER_CONTENT_TYPE_VALUE = "application/json";
    public static final String HEADER_USER_AGENT = "User-Agent";
    public static final String HOST = "https://carequeue-production.servicebus.windows.net/";
    public static final String USER_AGENT_PREFIX = "CAReApp";

    @POST("/careapplog-production/messages")
    Call<ResponseBody> sendLog(@Body ServerLogModel serverLogModel);
}
