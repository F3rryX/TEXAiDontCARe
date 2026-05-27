package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.Utils;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceListResponse {

    @SerializedName("services")
    @Expose
    private List<ServiceDataModel> list;

    public List<ServiceDataModel> getList() {
        Iterator<ServiceDataModel> it = this.list.iterator();
        while (it.hasNext()) {
            if (!Utils.serviceModelIsConsistent(it.next())) {
                it.remove();
            }
        }
        return this.list;
    }

    public void setList(List<ServiceDataModel> list) {
        this.list = list;
    }

    public ServiceDataModel getDataFromTypeId(ServiceDataModel.DongleServiceId dongleServiceId) {
        for (ServiceDataModel serviceDataModel : getList()) {
            if (serviceDataModel.getIdType() == dongleServiceId) {
                return serviceDataModel;
            }
        }
        return null;
    }
}
