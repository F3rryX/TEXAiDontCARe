package com.texa.careapp.app.activationSosServices;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsParams;
import com.android.billingclient.api.SkuDetailsResponseListener;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.PurchaseData;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class SosInAppBillingSubscription extends BaseActivity implements BillingClientStateListener, PurchasesUpdatedListener, SkuDetailsResponseListener {
    private static final long RECONNECT_TIMER_MAX_TIME_MILLISECONDS = 900000;
    private static final long RECONNECT_TIMER_START_MILLISECONDS = 1000;
    public static final String SERVICE_SKU = "service-sku";
    public static final String TICKET_ID = "lock-ticket-id";
    private BillingClient billingClient;
    private boolean mBillingServiceReady;
    protected CareApplication mCareApplication;

    @Inject
    EventBus mEventBus;
    private String selectedSku;
    String serviceSku;
    String ticketId;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private long reconnectMilliseconds = 1000;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) SosInAppBillingSubscription.class);
        intent.addFlags(268435456);
        intent.putExtra(TICKET_ID, str);
        intent.putExtra(SERVICE_SKU, str2);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT < 26) {
            setRequestedOrientation(1);
        }
        setContentView(R.layout.activity_sos_inapp_billing_subscription);
        this.ticketId = getIntent().getStringExtra(TICKET_ID);
        this.serviceSku = getIntent().getStringExtra(SERVICE_SKU);
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        initialiseBilling();
    }

    private void initialiseBilling() {
        if (this.billingClient != null) {
            return;
        }
        BillingClient billingClientBuild = BillingClient.newBuilder(this).setListener(this).enablePendingPurchases().build();
        this.billingClient = billingClientBuild;
        billingClientBuild.startConnection(this);
    }

    private void buyInAppSubscription(String str) {
        BillingClient billingClient = this.billingClient;
        if (billingClient == null || !billingClient.isReady()) {
            Toast.makeText(this, "Purchase requires Google Play Store (billing) on your Android.", 1).show();
        } else {
            this.selectedSku = str;
            this.billingClient.querySkuDetailsAsync(SkuDetailsParams.newBuilder().setType(BillingClient.SkuType.SUBS).setSkusList(new ArrayList<String>(str) { // from class: com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription.1
                final /* synthetic */ String val$sku;

                {
                    this.val$sku = str;
                    add(str);
                }
            }).build(), this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BillingClient billingClient = this.billingClient;
        if (billingClient != null) {
            billingClient.endConnection();
            this.billingClient = null;
        }
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        if (this.billingClient == null) {
            return;
        }
        int responseCode = billingResult.getResponseCode();
        if (responseCode != 0) {
            if (responseCode == 1) {
                Timber.i("onPurchasesUpdated: User canceled the purchase", new Object[0]);
                this.mEventBus.post(new HaveToCheckConsistentData(true));
                finish();
                return;
            } else if (responseCode == 5) {
                Timber.e("onPurchasesUpdated: Developer error means that Google Play does not recognize the configuration. If you are just getting started, make sure you have configured the application correctly in the Google Play Console. The SKU product ID must match and the APK you are using must be signed with release keys.", new Object[0]);
            } else if (responseCode != 7) {
                Timber.d("BillingResult [%1$s]: %2$s", Integer.valueOf(billingResult.getResponseCode()), billingResult.getDebugMessage());
            } else {
                Timber.i("onPurchasesUpdated: The user already owns this item", new Object[0]);
            }
        } else {
            if (list.size() == 0) {
                Timber.e("Purchase list size is 0, ignoring.", new Object[0]);
                return;
            }
            final Purchase purchase = list.get(0);
            Timber.i("Purchase state: %1$s", Integer.valueOf(purchase.getPurchaseState()));
            if (purchase.getPurchaseState() == 1) {
                if (!SosInAppBillingUtil.verifyDeveloperPayload(purchase)) {
                    Timber.e("Error purchasing. Authenticity verification failed.", new Object[0]);
                    this.mEventBus.post(new HaveToCheckConsistentData(true));
                    finish();
                    return;
                } else {
                    if (purchase.getSkus().contains(this.selectedSku)) {
                        Timber.i("Is purchase acknowledged: %1$b", Boolean.valueOf(purchase.isAcknowledged()));
                        if (!purchase.isAcknowledged()) {
                            this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgePurchaseResponseListener() { // from class: com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription$$ExternalSyntheticLambda0
                                @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
                                public final void onAcknowledgePurchaseResponse(BillingResult billingResult2) {
                                    this.f$0.m136x4017b3c8(purchase, billingResult2);
                                }
                            });
                            return;
                        } else {
                            completePurchaseAndClose(purchase);
                            return;
                        }
                    }
                    Timber.w("purchase doesn't contain expected SKU", new Object[0]);
                }
            }
        }
        this.mEventBus.post(new HaveToCheckConsistentData(true));
        finish();
    }

    /* JADX INFO: renamed from: lambda$onPurchasesUpdated$0$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription, reason: not valid java name */
    public /* synthetic */ void m136x4017b3c8(Purchase purchase, BillingResult billingResult) {
        Timber.d("acknowledgePurchase finished: --> %1$s : %2$s", Integer.valueOf(billingResult.getResponseCode()), billingResult.getDebugMessage());
        if (billingResult.getResponseCode() == 0) {
            completePurchaseAndClose(purchase);
        } else {
            this.mEventBus.post(new HaveToCheckConsistentData(true));
            finish();
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
        this.mBillingServiceReady = false;
        retryBillingServiceConnectionWithExponentialBackoff();
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(BillingResult billingResult) {
        int responseCode = billingResult.getResponseCode();
        Timber.d("onBillingSetupFinished: --> %1$s : %2$s", Integer.valueOf(responseCode), billingResult.getDebugMessage());
        if (responseCode == 0) {
            this.reconnectMilliseconds = 1000L;
            this.mBillingServiceReady = true;
            refreshPurchasesAsync();
            return;
        }
        retryBillingServiceConnectionWithExponentialBackoff();
    }

    public void refreshPurchasesAsync() {
        this.billingClient.queryPurchasesAsync(BillingClient.SkuType.SUBS, new PurchasesResponseListener() { // from class: com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription$$ExternalSyntheticLambda1
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                this.f$0.m137x6c451024(billingResult, list);
            }
        });
        Timber.d("Refreshing purchases started.", new Object[0]);
    }

    /* JADX INFO: renamed from: lambda$refreshPurchasesAsync$1$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription, reason: not valid java name */
    public /* synthetic */ void m137x6c451024(BillingResult billingResult, List list) {
        if (billingResult.getResponseCode() != 0) {
            Timber.e("Problem getting subscriptions: %1$s", billingResult.getDebugMessage());
        } else {
            processPurchaseList(list);
        }
    }

    private void processPurchaseList(List<Purchase> list) {
        if (list.size() == 0) {
            Timber.d("SKU %s purchasing.", SosInAppBillingUtil.getSkus().get(0));
            buyInAppSubscription(SosInAppBillingUtil.getSkus().get(0));
            return;
        }
        Iterator<String> it = SosInAppBillingUtil.getSkus().iterator();
        if (it.hasNext()) {
            String next = it.next();
            Timber.d("SKU -> %s", next);
            Iterator<Purchase> it2 = list.iterator();
            while (it2.hasNext() && !it2.next().getSkus().contains(next)) {
            }
            Timber.d("SKU %s not found, purchasing.", next);
            buyInAppSubscription(next);
        }
    }

    private void retryBillingServiceConnectionWithExponentialBackoff() {
        this.handler.postDelayed(new Runnable() { // from class: com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m138xa841f7df();
            }
        }, this.reconnectMilliseconds);
        this.reconnectMilliseconds = Math.min(this.reconnectMilliseconds * 2, 900000L);
    }

    /* JADX INFO: renamed from: lambda$retryBillingServiceConnectionWithExponentialBackoff$2$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription, reason: not valid java name */
    public /* synthetic */ void m138xa841f7df() {
        this.billingClient.startConnection(this);
    }

    @Override // com.android.billingclient.api.SkuDetailsResponseListener
    public void onSkuDetailsResponse(BillingResult billingResult, List<SkuDetails> list) {
        int responseCode = billingResult.getResponseCode();
        Timber.i("onSkuDetailsResponse: %1$s %2$s", Integer.valueOf(responseCode), billingResult.getDebugMessage());
        if (responseCode == 0) {
            for (SkuDetails skuDetails : list) {
                if (skuDetails.getSku().equalsIgnoreCase(this.selectedSku)) {
                    BillingFlowParams.Builder builderNewBuilder = BillingFlowParams.newBuilder();
                    builderNewBuilder.setSkuDetails(skuDetails);
                    BillingResult billingResultLaunchBillingFlow = this.billingClient.launchBillingFlow(this, builderNewBuilder.build());
                    if (billingResultLaunchBillingFlow.getResponseCode() == 0) {
                        Timber.i("Billing ok waiting for result", new Object[0]);
                        return;
                    } else {
                        Timber.e("Billing failed: %1$s", billingResultLaunchBillingFlow.getDebugMessage());
                        return;
                    }
                }
            }
        }
        this.mEventBus.post(new HaveToCheckConsistentData(true));
        finish();
    }

    private void completePurchaseAndClose(Purchase purchase) {
        try {
            Utils.safeModelSave(new PurchaseData(this.serviceSku, this.ticketId, "in_app", purchase), getApplicationContext());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Error while saving purchase data", new Object[0]);
        }
        this.mEventBus.post(new HaveToCheckConsistentData(true));
        finish();
    }
}
