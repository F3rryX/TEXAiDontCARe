package com.texa.careapp.networking;

import com.texa.careapp.Constants;
import com.texa.careapp.networking.response.DongleListResponse;
import com.texa.careapp.networking.response.InsuranceListResponse;
import com.texa.careapp.networking.response.ServerResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes2.dex */
public interface TexaCareApiServiceClient {
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/dongles/summary/")
    Observable<DongleListResponse> getDongleSummary(@Body HardwareIdList hardwareIdList);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/contents/insurers")
    Observable<InsuranceListResponse> insurers();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users/recovery")
    Observable<ServerResponse> recoverPasswordFromEmail(@Body RecoverPassword recoverPassword);
}
