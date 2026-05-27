package com.texa.careapp.networking;

import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockEntity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockResponseEntity;
import com.texa.careapp.app.activationSosServices.phone.NumberValidationResponse;
import com.texa.careapp.app.ecodriving.serviceserializer.BaseEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.HideTripEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.HintBaseEntity;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.model.BatteryModelEntity;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.CrashLogModelEntity;
import com.texa.careapp.model.EmergencyInfo;
import com.texa.careapp.model.PurchaseData;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.TermsModelsEntity;
import com.texa.careapp.model.ThresholdModelList;
import com.texa.careapp.model.TripModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.ValidateContactModel;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleDataModelEntity;
import com.texa.careapp.model.VehicleDataModelResponseEntity;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleModelEntity;
import com.texa.careapp.model.VehicleModelResponseEntity;
import com.texa.careapp.model.VehicleModelUpdateEntity;
import com.texa.careapp.model.VehicleOwnershipEntity;
import com.texa.careapp.networking.response.AddEmergencyResponse;
import com.texa.careapp.networking.response.CustomerResponse;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.networking.response.ServiceListResponse;
import com.texa.careapp.networking.response.UserResponse;
import com.texa.careapp.networking.response.UserVehicleListResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.networking.response.VehicleSelectionResponse;
import com.texa.careapp.utils.VehiclesUsersEntity;
import io.reactivex.Completable;
import io.reactivex.Observable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes2.dex */
public interface TexaCareApiServiceUser {
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users/terms")
    Completable acceptTerms(@Body TermsModelsEntity termsModelsEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/services/acceptances")
    Call<ServiceListResponse> acceptTermsOfConditions(@Body ServiceDataModel serviceDataModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/services/acceptances")
    Observable<ServiceListResponse> activationService(@Body ServiceDataModel serviceDataModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/emergency")
    Observable<AddEmergencyResponse> addEmergency(@Body EmergencyInfo emergencyInfo);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/emergency")
    Call<AddEmergencyResponse> addEmergencyBlocking(@Body EmergencyInfo emergencyInfo);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/emergency/messages")
    Observable<AddEmergencyResponse> addEmergencyMessages(@Body EmergencyInfo emergencyInfo);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/emergency/messages")
    Call<AddEmergencyResponse> addEmergencyMessagesBlocking(@Body EmergencyInfo emergencyInfo);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/errorcodes/archive")
    Call<ServerResponse> archiveErrorsBlocking(@Body ErrorsArchive errorsArchive);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/purchases/locks")
    Observable<PurchaseLockResponseEntity> changeLockStatus(@Query("ticket") String str, @Query("status") String str2);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/purchases/locks")
    Observable<PurchaseLockResponseEntity> checkLockStatus(@Body PurchaseLockEntity purchaseLockEntity);

    @DELETE("/api/users/contacts")
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    Call<ServerResponse> deleteContactBlocking(@Query(Constants.WebAPI.FIELD_CONTACT_ID) String str);

    @DELETE("/api/users/contacts")
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    Completable deleteContacts(@Query(Constants.WebAPI.FIELD_CONTACT_ID) String str);

    @DELETE("/api/emergency")
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    Observable<ServerResponse> deleteEmergency(@Query(Constants.WebAPI.FIELD_REQUEST_TICKET) String str);

    @DELETE("/api/vehicles/users")
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    Completable deleteVehiclesUsersAssociation(@Query("vehicle_id") String str);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/users/services")
    Observable<ServiceListResponse> dongleServices();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/users/services")
    Call<ServiceListResponse> dongleServicesBlocking();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/customers")
    Observable<CustomerResponse> getCustomers();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/ecodriving/hints")
    Observable<HintBaseEntity> getEcoDrivingHints(@Query("start_date") String str);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/ecodriving/trips")
    Call<BaseEntity> getEcoDrivingTripsBlocking(@Query(FcmConstants.NOTIFICATION_USER_ID) String str, @Query("start_date") String str2);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/users/me")
    Call<UserResponse> getInfoUserBlocking();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/users/me")
    Observable<UserResponse> getUserObservable();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_2})
    @GET("/api/vehicles/")
    Observable<UserVehicleListResponse> getUserVehicleList();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/vehicles/details")
    Call<VehicleResponse> getVehicleDetailsBlocking(@Query("vehicle_id") String str);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @GET("/api/vehicles/details")
    Observable<VehicleResponse> getVehicleDetailsObservable(@Query("vehicle_id") String str);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_2})
    @GET("/api/selections/index")
    Observable<VehicleSelectionResponse> getVehiclesSelection();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/ecodriving/setridehidden")
    Observable<ServerResponse> hideEcoDrivingTrip(@Body HideTripEntity hideTripEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_2})
    @POST("/api/vehicles/ownership")
    Observable<ServerResponse> openSegnalation(@Body VehicleOwnershipEntity vehicleOwnershipEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/ecodriving/trips")
    Call<ServerResponse> postEcoDrivingTripsBlocking(@Body BaseEntity baseEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/vehicles/lamps")
    Call<ServerResponse> postLampsBlocking(@Body LampsServerData lampsServerData);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/vehicles/parameters")
    Call<ServerResponse> postParametersBlocking(@Body ParametersServerData parametersServerData);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/vehicles/alarms")
    Call<ServerResponse> postVehicleAlarms(@Body VehicleAlarm vehicleAlarm);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_2})
    @POST("/api/vehicles/search")
    Observable<VehicleDataModelResponseEntity> postVehicleData(@Body VehicleDataModelEntity vehicleDataModelEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/vehicles/thresholds")
    Completable putThresholds(@Query("vehicle_id") String str, @Body ThresholdModelList thresholdModelList);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/vehicles/thresholds")
    Call<ServerResponse> putThresholdsBlocking(@Query("vehicle_id") String str, @Body ThresholdModelList thresholdModelList);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/users/me")
    Completable putUserData(@Body UserModel userModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/vehicles")
    Call<ServerResponse> putVehicleBlocking(@Query("vehicle_id") String str, @Body VehicleModel vehicleModel);

    @DELETE("/api/dongles/configurations")
    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    Completable resetConfiguration(@Query("hwid") String str);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/reports/binary")
    Call<ServerResponse> sendBatteryRaw(@Body BatteryModelEntity batteryModelEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/reports/binary")
    Call<ServerResponse> sendRawCrashLog(@Body CrashLogModelEntity crashLogModelEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/purchases/receipt")
    Observable<ServerResponse> sendReceipt(@Body PurchaseData purchaseData);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/purchases/receipt")
    Call<ServerResponse> sendReceiptBlocking(@Body PurchaseData purchaseData);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users")
    Observable<UserResponse> signUpObservable(@Header("Authorization") String str, @Body RegistrationInfo registrationInfo);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users/contacts")
    Call<ServerResponse> updateContactBlocking(@Body ContactModel contactModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users/contacts")
    Completable updateContacts(@Body ContactModel contactModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/trips")
    Observable<ServerResponse> updateTripData(@Body TripModel tripModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/trips")
    Call<ServerResponse> updateTripDataBlocking(@Body TripModel tripModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/users/me")
    Call<ServerResponse> updateUserData(@Body UserModel userModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @PUT("/api/vehicles")
    Completable updateVehicle(@Query("vehicle_id") String str, @Body VehicleModelUpdateEntity vehicleModelUpdateEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users/dongles")
    Observable<ServerResponse> userDongleAssociation();

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/users/contacts/validations")
    Observable<NumberValidationResponse> validateUserContact(@Body ValidateContactModel validateContactModel);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/vehicles")
    Observable<VehicleModelResponseEntity> vehicleInsertion(@Body VehicleModelEntity vehicleModelEntity);

    @Headers({Constants.WebAPI.HEADER_ACCEPT_VERSION_1})
    @POST("/api/vehicles/users")
    Completable vehiclesUsersAssociation(@Body VehiclesUsersEntity vehiclesUsersEntity);
}
