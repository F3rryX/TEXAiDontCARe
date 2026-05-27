package com.texa.careapp.app.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.settings.vehicle.SettingsVehicleActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.SettingsHeaderItemBinding;
import com.texa.careapp.databinding.SettingsListItemBinding;
import com.texa.careapp.databinding.SettingsMyVehiclesListBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.HeaderSettingsModel;
import com.texa.careapp.model.ISettingsModel;
import com.texa.careapp.model.ItemSettingsModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleListSettingsModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.SettingsUtils;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<ISettingsModel> items;
    private Activity mActivity;

    @Inject
    protected CommunicationObservable mCommunicationObservable;
    private Context mContext;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private Navigator mNavigator;

    @Inject
    protected ServiceDataManager mServiceDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;

    private void markEnabled(View view) {
        view.setAlpha(1.0f);
    }

    private void markDisabled(View view) {
        view.setAlpha(0.5f);
        view.setOnClickListener(null);
    }

    private void markEnabled(View view, ItemSettingsModel itemSettingsModel) {
        view.setAlpha(1.0f);
        if (itemSettingsModel.getAction() == 2) {
            view.setVisibility(0);
        }
    }

    private void markDisabled(View view, ItemSettingsModel itemSettingsModel) {
        view.setAlpha(0.5f);
        view.setOnClickListener(null);
        if (itemSettingsModel.getAction() == 2) {
            view.setVisibility(8);
        }
    }

    SettingsAdapter(Activity activity, List<ISettingsModel> list, Navigator navigator) {
        this.mActivity = activity;
        this.items = list;
        this.mNavigator = navigator;
        this.mContext = navigator.getApplication().getApplicationContext();
        ((CareApplication) this.mNavigator.getApplication()).component().inject(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i == 0) {
            return new ISettingsViewHolderHeader((SettingsHeaderItemBinding) DataBindingUtil.inflate(layoutInflaterFrom, R.layout.settings_header_item, viewGroup, false));
        }
        if (i == 1) {
            return new ISettingsViewHolderListItem((SettingsListItemBinding) DataBindingUtil.inflate(layoutInflaterFrom, R.layout.settings_list_item, viewGroup, false));
        }
        if (i != 2) {
            return null;
        }
        return new ISettingsViewHolderMyVehiclesList((SettingsMyVehiclesListBinding) DataBindingUtil.inflate(layoutInflaterFrom, R.layout.settings_my_vehicles_list, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int type = this.items.get(i).getType();
        if (type == 0) {
            ((ISettingsViewHolderHeader) viewHolder).mSettingsHeaderTitle.setText(((HeaderSettingsModel) this.items.get(i)).getTitle());
            return;
        }
        if (type != 1) {
            if (type != 2) {
                return;
            }
            inflateVehicleList((VehicleListSettingsModel) this.items.get(i), (ISettingsViewHolderMyVehiclesList) viewHolder);
            return;
        }
        ISettingsViewHolderListItem iSettingsViewHolderListItem = (ISettingsViewHolderListItem) viewHolder;
        ItemSettingsModel itemSettingsModel = (ItemSettingsModel) this.items.get(i);
        addListeners(itemSettingsModel, iSettingsViewHolderListItem);
        iSettingsViewHolderListItem.mSettingsItemTitle.setText(itemSettingsModel.getTitle());
        iSettingsViewHolderListItem.mSettingsItemSubtitle.setText(itemSettingsModel.getSubtitle());
    }

    private void addListeners(ItemSettingsModel itemSettingsModel, ISettingsViewHolderListItem iSettingsViewHolderListItem) {
        if (itemSettingsModel.getVisibility()) {
            markEnabled(iSettingsViewHolderListItem.mSettingsItemContainer, itemSettingsModel);
        } else {
            markDisabled(iSettingsViewHolderListItem.mSettingsItemContainer, itemSettingsModel);
        }
        if (itemSettingsModel.getAction() == 12) {
            itemSettingsModel.setOnCLickListener(iSettingsViewHolderListItem.mSettingsItemContainer, this.mNavigator);
        } else if (itemSettingsModel.getAction() == 9) {
            startSOSTerms(iSettingsViewHolderListItem, itemSettingsModel);
        } else if (itemSettingsModel.getAction() != 5 || validateServices()) {
            itemSettingsModel.setOnCLickListener(iSettingsViewHolderListItem.mSettingsItemContainer, itemSettingsModel.getAction(), this.mContext);
        } else {
            itemSettingsModel.setOnCLickListener(iSettingsViewHolderListItem.mSettingsItemContainer, itemSettingsModel.getAction(), this.mContext);
        }
        if (itemSettingsModel.hasImage()) {
            iSettingsViewHolderListItem.mSettingsItemImage.setBackgroundResource(itemSettingsModel.getImage());
            iSettingsViewHolderListItem.mSettingsItemImage.setVisibility(0);
        } else {
            iSettingsViewHolderListItem.mSettingsItemImage.setVisibility(4);
        }
    }

    private void startSOSTerms(ISettingsViewHolderListItem iSettingsViewHolderListItem, ItemSettingsModel itemSettingsModel) {
        if (this.mDongleDataManager.getDongleModel() != null) {
            ServiceDataManager serviceDataManager = this.mServiceDataManager;
            ServiceDataModel servicePriority = serviceDataManager.getServicePriority(serviceDataManager.filterActiveSosServicesForHwId(this.mDongleDataManager.getDongleModel().getHwid(), this.mServiceDataManager.getActiveGenericSosServices()));
            if (servicePriority != null) {
                markEnabled(iSettingsViewHolderListItem.mSettingsItemContainer);
                itemSettingsModel.setOnCLickListener(iSettingsViewHolderListItem.mSettingsItemContainer, this.mContext, servicePriority);
                return;
            } else {
                markDisabled(iSettingsViewHolderListItem.mSettingsItemContainer);
                return;
            }
        }
        markDisabled(iSettingsViewHolderListItem.mSettingsItemContainer);
    }

    private boolean validateServices() {
        return !getAllServices().isEmpty();
    }

    private List<ServiceDataModel> getAllServices() {
        return new Select().from(ServiceDataModel.class).orderBy(ServiceDataModel.COLUMN_ACTIVATION).execute();
    }

    private void inflateVehicleList(VehicleListSettingsModel vehicleListSettingsModel, ISettingsViewHolderMyVehiclesList iSettingsViewHolderMyVehiclesList) {
        iSettingsViewHolderMyVehiclesList.mSettingsMyVehiclesList.removeAllViews();
        for (final VehicleModel vehicleModel : vehicleListSettingsModel.getVehicleModels()) {
            View viewInflate = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.vehicle_settings_my_car_list_item, (ViewGroup) iSettingsViewHolderMyVehiclesList.mSettingsMyVehiclesList, false);
            fillVehicleData(vehicleModel, (TextView) viewInflate.findViewById(R.id.vehicle_readable_model), (TextView) viewInflate.findViewById(R.id.vehicle_plate), (TextView) viewInflate.findViewById(R.id.vehicle_odometer));
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.SettingsAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m389x15e3f81a(vehicleModel, view);
                }
            });
            iSettingsViewHolderMyVehiclesList.mSettingsMyVehiclesList.addView(viewInflate);
        }
    }

    /* JADX INFO: renamed from: lambda$inflateVehicleList$0$com-texa-careapp-app-settings-SettingsAdapter, reason: not valid java name */
    public /* synthetic */ void m389x15e3f81a(VehicleModel vehicleModel, View view) {
        if (this.mCommunicationObservable.getCurrentStatus() == CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            this.mDongleDataManager.setDongleLikeSelectedWithHWID(vehicleModel.getHwid());
            this.mVehicleObserver.forceUpdate();
            Intent intent = new Intent(SettingsVehicleActivity.buildIntent(this.mContext));
            intent.putExtra(VehicleModel.COLUMN_UID, vehicleModel.getUid());
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
            return;
        }
        if (vehicleModel.isCurrentVehicle()) {
            Timber.d("settings: " + vehicleModel.getHwid(), new Object[0]);
            Intent intent2 = new Intent(this.mContext, (Class<?>) SettingsVehicleActivity.class);
            intent2.addFlags(268435456);
            intent2.putExtra(VehicleModel.COLUMN_UID, vehicleModel.getUid());
            this.mContext.startActivity(intent2);
            return;
        }
        Timber.d("impossibile entrare nei settings se un altro veicolo è connesso", new Object[0]);
    }

    void fillVehicleData(VehicleModel vehicleModel, TextView textView, TextView textView2, TextView textView3) {
        textView.setText(Utils.formatVehicleModel(vehicleModel));
        textView2.setText(vehicleModel.getPlate());
        textView3.setText(vehicleModel.formatOdometer(this.mContext));
    }

    void refreshUserItem(final int i, UserModel userModel) {
        this.items.get(i).setTitle(String.format(this.mContext.getString(R.string.format_string_space), userModel.getFirstName(), userModel.getLastName()));
        this.items.get(i).setSubtitle(this.mContext.getString(R.string.change_personal_data));
        this.items.get(i).setAction(0);
        if (!SettingsUtils.isInfoSet(userModel)) {
            this.items.get(i).setHasImage(true);
            this.items.get(i).setImage(com.texa.careapp.R.drawable.ic_warning);
        } else {
            this.items.get(i).setHasImage(false);
        }
        this.items.get(i).setType(1);
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.settings.SettingsAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m390xbff72f97(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$refreshUserItem$1$com-texa-careapp-app-settings-SettingsAdapter, reason: not valid java name */
    public /* synthetic */ void m390xbff72f97(int i) {
        notifyItemChanged(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.items.get(i) instanceof HeaderSettingsModel) {
            return this.items.get(i).getType();
        }
        if (this.items.get(i) instanceof VehicleListSettingsModel) {
            return this.items.get(i).getType();
        }
        if (this.items.get(i) instanceof ItemSettingsModel) {
            return this.items.get(i).getType();
        }
        return -1;
    }

    class ISettingsViewHolderHeader extends RecyclerView.ViewHolder {
        final TextView mSettingsHeaderTitle;

        ISettingsViewHolderHeader(SettingsHeaderItemBinding settingsHeaderItemBinding) {
            super(settingsHeaderItemBinding.getRoot());
            this.mSettingsHeaderTitle = settingsHeaderItemBinding.settingsHeaderTitle;
        }
    }

    class ISettingsViewHolderListItem extends RecyclerView.ViewHolder {
        final RelativeLayout mSettingsItemContainer;
        final ImageView mSettingsItemImage;
        final TextView mSettingsItemSubtitle;
        final TextView mSettingsItemTitle;

        ISettingsViewHolderListItem(SettingsListItemBinding settingsListItemBinding) {
            super(settingsListItemBinding.getRoot());
            this.mSettingsItemContainer = settingsListItemBinding.settingsItemContainer;
            this.mSettingsItemTitle = settingsListItemBinding.settingsItemTitle;
            this.mSettingsItemSubtitle = settingsListItemBinding.settingsItemSubtitle;
            this.mSettingsItemImage = settingsListItemBinding.settingsItemImage;
        }
    }

    class ISettingsViewHolderMyVehiclesList extends RecyclerView.ViewHolder {
        final LinearLayout mSettingsMyVehiclesList;

        ISettingsViewHolderMyVehiclesList(SettingsMyVehiclesListBinding settingsMyVehiclesListBinding) {
            super(settingsMyVehiclesListBinding.getRoot());
            this.mSettingsMyVehiclesList = settingsMyVehiclesListBinding.settingsMyVehiclesList;
        }
    }
}
