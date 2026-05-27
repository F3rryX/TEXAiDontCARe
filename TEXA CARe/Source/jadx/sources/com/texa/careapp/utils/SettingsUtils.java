package com.texa.careapp.utils;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.BuildConfig;
import com.texa.careapp.model.HeaderSettingsModel;
import com.texa.careapp.model.ItemSettingsModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleListSettingsModel;
import com.texa.careapp.model.VehicleModel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsUtils {
    public static ItemSettingsModel getSettingsServicesContactsItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.settings_service_contacts_title));
        itemSettingsModel.setSubtitle(context.getString(R.string.settings_service_contacts_description));
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setAction(18);
        return itemSettingsModel;
    }

    public static HeaderSettingsModel getSettingsServicesTopHeader(Context context) {
        HeaderSettingsModel headerSettingsModel = new HeaderSettingsModel();
        headerSettingsModel.setTitle(context.getString(R.string.settings_service_title));
        headerSettingsModel.setHasImage(false);
        headerSettingsModel.isVisible(true);
        headerSettingsModel.setType(0);
        return headerSettingsModel;
    }

    public static HeaderSettingsModel getSettingsVehicleTopHeader(Context context) {
        HeaderSettingsModel headerSettingsModel = new HeaderSettingsModel();
        headerSettingsModel.setTitle(context.getString(R.string.my_cars));
        headerSettingsModel.isVisible(true);
        headerSettingsModel.setHasImage(false);
        headerSettingsModel.setType(0);
        return headerSettingsModel;
    }

    public static HeaderSettingsModel getSettingsUserTopHeader(Context context) {
        HeaderSettingsModel headerSettingsModel = new HeaderSettingsModel();
        headerSettingsModel.setTitle(context.getString(R.string.personal_data));
        headerSettingsModel.setHasImage(false);
        headerSettingsModel.isVisible(true);
        headerSettingsModel.setType(0);
        return headerSettingsModel;
    }

    public static ItemSettingsModel getSettingUserItem(Context context, UserModel userModel) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        if (userModel != null) {
            itemSettingsModel.setTitle(String.format(context.getString(R.string.format_string_space), userModel.getFirstName(), userModel.getLastName()));
        }
        itemSettingsModel.setSubtitle(context.getString(R.string.change_personal_data));
        itemSettingsModel.setAction(0);
        if (!isInfoSet(userModel)) {
            itemSettingsModel.setHasImage(true);
            itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_warning);
        } else {
            itemSettingsModel.setHasImage(false);
            itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_warning);
        }
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setType(1);
        return itemSettingsModel;
    }

    public static VehicleListSettingsModel getSettingsVehicleItem(List<VehicleModel> list) {
        VehicleListSettingsModel vehicleListSettingsModel = new VehicleListSettingsModel();
        vehicleListSettingsModel.setType(2);
        vehicleListSettingsModel.setHasImage(false);
        vehicleListSettingsModel.setAction(1);
        vehicleListSettingsModel.isVisible(true);
        vehicleListSettingsModel.setVehicleModels(list);
        return vehicleListSettingsModel;
    }

    public static ItemSettingsModel getSettingsAddVehicleItem(Context context, int i) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setType(1);
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setAction(2);
        itemSettingsModel.setTitle(context.getString(R.string.settings_add_new_car));
        itemSettingsModel.setSubtitle(context.getString(R.string.settings_add_new_car_description));
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_plus_green);
        if (i < BuildConfig.MAX_VEHICLE_TO_ADD.intValue()) {
            itemSettingsModel.isVisible(true);
        } else {
            itemSettingsModel.isVisible(false);
        }
        return itemSettingsModel;
    }

    public static HeaderSettingsModel getSettingsInfoTopHeader(Context context) {
        HeaderSettingsModel headerSettingsModel = new HeaderSettingsModel();
        headerSettingsModel.setTitle(context.getString(R.string.info));
        headerSettingsModel.setType(0);
        headerSettingsModel.isVisible(true);
        headerSettingsModel.setHasImage(false);
        return headerSettingsModel;
    }

    public static ItemSettingsModel getSettingsSwFwVersionItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(false);
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.sw_and_fw_version));
        itemSettingsModel.setSubtitle(context.getString(R.string.check_and_update_sf));
        itemSettingsModel.setAction(3);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsTroubleShootingItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.resolution_of_problems));
        itemSettingsModel.setSubtitle(context.getString(R.string.diagnostic_text_button));
        itemSettingsModel.setAction(4);
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.isVisible(true);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsServicesItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.settings_services_title));
        itemSettingsModel.setSubtitle(context.getString(R.string.settings_services_desc));
        itemSettingsModel.setAction(5);
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsCompanyInfoItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.company_info_label));
        itemSettingsModel.setSubtitle(context.getString(R.string.subtitle_company_info));
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setAction(6);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsPrivacyPolicyItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.privacy_briefing));
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setSubtitle(context.getString(R.string.subtitle_privacy_policy));
        itemSettingsModel.setAction(7);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsTermsServiceItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.terms_of_use));
        itemSettingsModel.setSubtitle(context.getString(R.string.subtitle_terms_of_service));
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setAction(8);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsTermsSOSItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.terms_of_service));
        itemSettingsModel.setSubtitle(context.getString(R.string.subtitle_terms_of_sos_service));
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setAction(9);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsThirdPartsLicenseItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.third_part_license_title));
        itemSettingsModel.setSubtitle(context.getString(R.string.third_part_license_subtitle));
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setAction(10);
        return itemSettingsModel;
    }

    public static HeaderSettingsModel getSettingsConfigurationTopHeader(Context context) {
        HeaderSettingsModel headerSettingsModel = new HeaderSettingsModel();
        headerSettingsModel.isVisible(true);
        headerSettingsModel.setTitle(context.getString(R.string.configuration));
        headerSettingsModel.setType(0);
        headerSettingsModel.setHasImage(false);
        return headerSettingsModel;
    }

    public static ItemSettingsModel getSettingsGeneralSettingsItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setHasImage(true);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.general_settings));
        itemSettingsModel.setSubtitle(context.getString(R.string.change_general_settings));
        itemSettingsModel.setImage(com.texa.careapp.R.drawable.ic_action_next_light);
        itemSettingsModel.setAction(11);
        return itemSettingsModel;
    }

    public static ItemSettingsModel getSettingsFabricResetItem(Context context) {
        ItemSettingsModel itemSettingsModel = new ItemSettingsModel();
        itemSettingsModel.isVisible(true);
        itemSettingsModel.setHasImage(false);
        itemSettingsModel.setType(1);
        itemSettingsModel.setTitle(context.getString(R.string.title_general_factory_reset));
        itemSettingsModel.setSubtitle(context.getString(R.string.subtitle_general_factory_reset));
        itemSettingsModel.setAction(12);
        return itemSettingsModel;
    }

    public static boolean isInfoSet(UserModel userModel) {
        if (userModel != null) {
            return (userModel.getAddress() == null || userModel.getAddress().isEmpty() || userModel.getCivicNumber() == null || userModel.getCivicNumber().isEmpty() || userModel.getCountryCode() == null || userModel.getCountryCode().isEmpty() || userModel.getCity() == null || userModel.getCity().isEmpty() || userModel.getUserCellPhoneContact() == null || userModel.getUserCellPhoneContact().getPhoneNumber() == null || userModel.getLicenseExpireDate() == null) ? false : true;
        }
        return true;
    }
}
