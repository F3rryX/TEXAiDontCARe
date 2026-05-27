.class public interface abstract Lcom/texa/careapp/networking/TexaCareApiServiceUser;
.super Ljava/lang/Object;
.source "TexaCareApiServiceUser.java"


# virtual methods
.method public abstract acceptTerms(Lcom/texa/careapp/model/TermsModelsEntity;)Lio/reactivex/Completable;
    .param p1    # Lcom/texa/careapp/model/TermsModelsEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users/terms"
    .end annotation
.end method

.method public abstract acceptTermsOfConditions(Lcom/texa/careapp/model/ServiceDataModel;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/ServiceDataModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServiceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/services/acceptances"
    .end annotation
.end method

.method public abstract activationService(Lcom/texa/careapp/model/ServiceDataModel;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/ServiceDataModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServiceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/services/acceptances"
    .end annotation
.end method

.method public abstract addEmergency(Lcom/texa/careapp/model/EmergencyInfo;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/EmergencyInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/EmergencyInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/AddEmergencyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/emergency"
    .end annotation
.end method

.method public abstract addEmergencyBlocking(Lcom/texa/careapp/model/EmergencyInfo;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/EmergencyInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/EmergencyInfo;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/AddEmergencyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/emergency"
    .end annotation
.end method

.method public abstract addEmergencyMessages(Lcom/texa/careapp/model/EmergencyInfo;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/EmergencyInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/EmergencyInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/AddEmergencyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/emergency/messages"
    .end annotation
.end method

.method public abstract addEmergencyMessagesBlocking(Lcom/texa/careapp/model/EmergencyInfo;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/EmergencyInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/EmergencyInfo;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/AddEmergencyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/emergency/messages"
    .end annotation
.end method

.method public abstract archiveErrorsBlocking(Lcom/texa/careapp/networking/ErrorsArchive;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/networking/ErrorsArchive;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/ErrorsArchive;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/errorcodes/archive"
    .end annotation
.end method

.method public abstract changeLockStatus(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ticket"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/purchases/locks"
    .end annotation
.end method

.method public abstract checkLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/purchases/locks"
    .end annotation
.end method

.method public abstract deleteContactBlocking(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "contact_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/users/contacts"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract deleteContacts(Ljava/lang/String;)Lio/reactivex/Completable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "contact_id"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/users/contacts"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract deleteEmergency(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "request_ticket"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/emergency"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract deleteVehiclesUsersAssociation(Ljava/lang/String;)Lio/reactivex/Completable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/vehicles/users"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract dongleServices()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServiceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/users/services"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract dongleServicesBlocking()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServiceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/users/services"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getCustomers()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/customers"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getEcoDrivingHints(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "start_date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/HintBaseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/ecodriving/hints"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getEcoDrivingTripsBlocking(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "start_date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/ecodriving/trips"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getInfoUserBlocking()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/users/me"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getUserObservable()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/users/me"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getUserVehicleList()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/UserVehicleListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/vehicles/"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=2"
        }
    .end annotation
.end method

.method public abstract getVehicleDetailsBlocking(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/VehicleResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/vehicles/details"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/VehicleResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/vehicles/details"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract getVehiclesSelection()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/VehicleSelectionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/selections/index"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=2"
        }
    .end annotation
.end method

.method public abstract hideEcoDrivingTrip(Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/ecodriving/setridehidden"
    .end annotation
.end method

.method public abstract openSegnalation(Lcom/texa/careapp/model/VehicleOwnershipEntity;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/VehicleOwnershipEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleOwnershipEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=2"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles/ownership"
    .end annotation
.end method

.method public abstract postEcoDrivingTripsBlocking(Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/ecodriving/trips"
    .end annotation
.end method

.method public abstract postLampsBlocking(Lcom/texa/careapp/networking/LampsServerData;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/networking/LampsServerData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/LampsServerData;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles/lamps"
    .end annotation
.end method

.method public abstract postParametersBlocking(Lcom/texa/careapp/networking/ParametersServerData;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/networking/ParametersServerData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/ParametersServerData;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles/parameters"
    .end annotation
.end method

.method public abstract postVehicleAlarms(Lcom/texa/careapp/model/VehicleAlarm;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/VehicleAlarm;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleAlarm;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles/alarms"
    .end annotation
.end method

.method public abstract postVehicleData(Lcom/texa/careapp/model/VehicleDataModelEntity;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/VehicleDataModelEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleDataModelEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleDataModelResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=2"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles/search"
    .end annotation
.end method

.method public abstract putThresholds(Ljava/lang/String;Lcom/texa/careapp/model/ThresholdModelList;)Lio/reactivex/Completable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .param p2    # Lcom/texa/careapp/model/ThresholdModelList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/vehicles/thresholds"
    .end annotation
.end method

.method public abstract putThresholdsBlocking(Ljava/lang/String;Lcom/texa/careapp/model/ThresholdModelList;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .param p2    # Lcom/texa/careapp/model/ThresholdModelList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/model/ThresholdModelList;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/vehicles/thresholds"
    .end annotation
.end method

.method public abstract putUserData(Lcom/texa/careapp/model/UserModel;)Lio/reactivex/Completable;
    .param p1    # Lcom/texa/careapp/model/UserModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/users/me"
    .end annotation
.end method

.method public abstract putVehicleBlocking(Ljava/lang/String;Lcom/texa/careapp/model/VehicleModel;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .param p2    # Lcom/texa/careapp/model/VehicleModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/model/VehicleModel;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/vehicles"
    .end annotation
.end method

.method public abstract resetConfiguration(Ljava/lang/String;)Lio/reactivex/Completable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "hwid"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/dongles/configurations"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract sendBatteryRaw(Lcom/texa/careapp/model/BatteryModelEntity;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/BatteryModelEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/BatteryModelEntity;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/reports/binary"
    .end annotation
.end method

.method public abstract sendRawCrashLog(Lcom/texa/careapp/model/CrashLogModelEntity;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/CrashLogModelEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/CrashLogModelEntity;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/reports/binary"
    .end annotation
.end method

.method public abstract sendReceipt(Lcom/texa/careapp/model/PurchaseData;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/PurchaseData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/PurchaseData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/purchases/receipt"
    .end annotation
.end method

.method public abstract sendReceiptBlocking(Lcom/texa/careapp/model/PurchaseData;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/PurchaseData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/PurchaseData;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/purchases/receipt"
    .end annotation
.end method

.method public abstract signUpObservable(Ljava/lang/String;Lcom/texa/careapp/networking/RegistrationInfo;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/texa/careapp/networking/RegistrationInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/networking/RegistrationInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users"
    .end annotation
.end method

.method public abstract updateContactBlocking(Lcom/texa/careapp/model/ContactModel;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/ContactModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/ContactModel;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users/contacts"
    .end annotation
.end method

.method public abstract updateContacts(Lcom/texa/careapp/model/ContactModel;)Lio/reactivex/Completable;
    .param p1    # Lcom/texa/careapp/model/ContactModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users/contacts"
    .end annotation
.end method

.method public abstract updateTripData(Lcom/texa/careapp/model/TripModel;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/TripModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/TripModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/trips"
    .end annotation
.end method

.method public abstract updateTripDataBlocking(Lcom/texa/careapp/model/TripModel;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/TripModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/TripModel;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/trips"
    .end annotation
.end method

.method public abstract updateUserData(Lcom/texa/careapp/model/UserModel;)Lretrofit2/Call;
    .param p1    # Lcom/texa/careapp/model/UserModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/UserModel;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/users/me"
    .end annotation
.end method

.method public abstract updateVehicle(Ljava/lang/String;Lcom/texa/careapp/model/VehicleModelUpdateEntity;)Lio/reactivex/Completable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vehicle_id"
        .end annotation
    .end param
    .param p2    # Lcom/texa/careapp/model/VehicleModelUpdateEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/vehicles"
    .end annotation
.end method

.method public abstract userDongleAssociation()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users/dongles"
    .end annotation
.end method

.method public abstract validateUserContact(Lcom/texa/careapp/model/ValidateContactModel;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/ValidateContactModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/ValidateContactModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/phone/NumberValidationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users/contacts/validations"
    .end annotation
.end method

.method public abstract vehicleInsertion(Lcom/texa/careapp/model/VehicleModelEntity;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/model/VehicleModelEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModelEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModelResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles"
    .end annotation
.end method

.method public abstract vehiclesUsersAssociation(Lcom/texa/careapp/utils/VehiclesUsersEntity;)Lio/reactivex/Completable;
    .param p1    # Lcom/texa/careapp/utils/VehiclesUsersEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/vehicles/users"
    .end annotation
.end method
