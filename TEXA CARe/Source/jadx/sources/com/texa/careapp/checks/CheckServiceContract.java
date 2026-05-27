package com.texa.careapp.checks;

import androidx.core.os.OperationCanceledException;
import com.activeandroid.Model;
import com.texa.careapp.app.events.ModelUpdateEvent;
import com.texa.careapp.checks.Check;
import com.texa.careapp.model.ServiceDataModel;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
class CheckServiceContract implements Check {
    private ServiceDataModel service;
    private PublishSubject<ServiceDataModel> serviceObservable = PublishSubject.create();

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    CheckServiceContract(ServiceDataModel serviceDataModel) {
        this.service = serviceDataModel;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return this.serviceObservable.doOnSubscribe(new Consumer() { // from class: com.texa.careapp.checks.CheckServiceContract$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m582lambda$check$0$comtexacareappchecksCheckServiceContract((Disposable) obj);
            }
        }).doOnComplete(new Action() { // from class: com.texa.careapp.checks.CheckServiceContract$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m583lambda$check$1$comtexacareappchecksCheckServiceContract();
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.checks.CheckServiceContract$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m584lambda$check$2$comtexacareappchecksCheckServiceContract((ServiceDataModel) obj);
            }
        }).distinctUntilChanged().onErrorReturn(new Function() { // from class: com.texa.careapp.checks.CheckServiceContract$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Check.Result.OK;
            }
        });
    }

    /* JADX INFO: renamed from: lambda$check$0$com-texa-careapp-checks-CheckServiceContract, reason: not valid java name */
    public /* synthetic */ void m582lambda$check$0$comtexacareappchecksCheckServiceContract(Disposable disposable) throws Exception {
        EventBus.getDefault().register(this);
    }

    /* JADX INFO: renamed from: lambda$check$1$com-texa-careapp-checks-CheckServiceContract, reason: not valid java name */
    public /* synthetic */ void m583lambda$check$1$comtexacareappchecksCheckServiceContract() throws Exception {
        EventBus.getDefault().unregister(this);
    }

    /* JADX INFO: renamed from: lambda$check$2$com-texa-careapp-checks-CheckServiceContract, reason: not valid java name */
    public /* synthetic */ ObservableSource m584lambda$check$2$comtexacareappchecksCheckServiceContract(ServiceDataModel serviceDataModel) throws Exception {
        return Observable.just(checkCurrentStatus(serviceDataModel));
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        return checkCurrentStatus(this.service);
    }

    private Check.Result checkCurrentStatus(ServiceDataModel serviceDataModel) {
        if (serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.ACTIVE && !serviceDataModel.isTermsAccepted()) {
            return Check.Result.BLOCKING;
        }
        return Check.Result.OK;
    }

    @Subscribe
    public void onEvent(ModelUpdateEvent modelUpdateEvent) {
        Model model = modelUpdateEvent.getModel();
        if ((model instanceof ServiceDataModel) && model.equals(this.service)) {
            if (modelUpdateEvent.getAction() == ModelUpdateEvent.DatabaseAction.DELETE) {
                this.serviceObservable.onError(new OperationCanceledException("service Checked was cancelled"));
                return;
            }
            ServiceDataModel serviceDataModel = (ServiceDataModel) model;
            this.service = serviceDataModel;
            this.serviceObservable.onNext(serviceDataModel);
        }
    }
}
