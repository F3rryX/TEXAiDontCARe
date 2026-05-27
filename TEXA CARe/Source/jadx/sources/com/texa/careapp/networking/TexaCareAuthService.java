package com.texa.careapp.networking;

import com.texa.careapp.utils.authentication.AccessToken;
import io.reactivex.Observable;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes2.dex */
public interface TexaCareAuthService {
    public static final String API_URL_PRODUCTION = "https://careauth.texa.com/";
    public static final String API_URL_TEST = "https://careauth.azurewebsites.net/";
    public static final String GRANT_TYPE_CLIENT_CREDENTIALS = "client_credentials";
    public static final String GRANT_TYPE_PASSWORD = "password";
    public static final String GRANT_TYPE_REFRESH_TOKEN = "refresh_token";
    public static final String PARAM_CLIENT_ID = "client_id";
    public static final String PARAM_CLIENT_SECRET = "client_secret";
    public static final String PARAM_GRANT_TYPE = "grant_type";
    public static final String PARAM_PASSWORD = "password";
    public static final String PARAM_REFRESH_TOKEN = "refresh_token";
    public static final String PARAM_USERNAME = "username";

    @FormUrlEncoded
    @POST("/oauth2/token")
    Observable<AccessToken> getAccessTokenObservable(@Field(PARAM_GRANT_TYPE) String str, @Field(PARAM_CLIENT_ID) String str2, @Field(PARAM_CLIENT_SECRET) String str3, @Field("username") String str4, @Field("password") String str5);

    @FormUrlEncoded
    @POST("/oauth2/token")
    Call<AccessToken> getAccessTokenSync(@Field(PARAM_GRANT_TYPE) String str, @Field(PARAM_CLIENT_ID) String str2, @Field(PARAM_CLIENT_SECRET) String str3, @Field("username") String str4, @Field("password") String str5);

    @FormUrlEncoded
    @POST("/oauth2/token")
    Observable<AccessToken> getClientToken(@Field(PARAM_GRANT_TYPE) String str, @Field(PARAM_CLIENT_ID) String str2, @Field(PARAM_CLIENT_SECRET) String str3);

    @FormUrlEncoded
    @POST("/oauth2/token")
    Call<AccessToken> getClientTokenSync(@Field(PARAM_GRANT_TYPE) String str, @Field(PARAM_CLIENT_ID) String str2, @Field(PARAM_CLIENT_SECRET) String str3);

    @FormUrlEncoded
    @POST("/oauth2/token")
    Observable<AccessToken> refreshTokenObservable(@Field(PARAM_GRANT_TYPE) String str, @Field(PARAM_CLIENT_ID) String str2, @Field(PARAM_CLIENT_SECRET) String str3, @Field("refresh_token") String str4);

    @FormUrlEncoded
    @POST("/oauth2/token")
    Call<AccessToken> refreshTokenSync(@Field(PARAM_GRANT_TYPE) String str, @Field(PARAM_CLIENT_ID) String str2, @Field(PARAM_CLIENT_SECRET) String str3, @Field("refresh_token") String str4);
}
