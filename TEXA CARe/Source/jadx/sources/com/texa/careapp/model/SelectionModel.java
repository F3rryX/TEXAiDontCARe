package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.texa.careapp.app.onboarding.IVehicleModel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = SelectionModel.TABLE_NAME)
public class SelectionModel extends Model implements IVehicleModel {
    private static final String BRAND = "brand";
    private static final String BRAND_ID = "brandId";
    private static final String DESCRIPTION = "description";
    private static final String MODEL = "model";
    private static final String SELECTION_ID = "selectionId";
    public static final String TABLE_NAME = "selection";

    @Column(name = BRAND)
    private String brand;

    @Column(name = BRAND_ID)
    private long brandId;

    @Column(name = "description")
    private String description;

    @Column(name = MODEL)
    private String model;

    @Column(name = SELECTION_ID, onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    private String selectionId;

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public String getVehiclePlate() {
        return "";
    }

    public void setSelectionId(String str) {
        this.selectionId = str;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public String getBrand() {
        return this.brand;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public long getBrandId() {
        return this.brandId;
    }

    public void setBrandId(long j) {
        this.brandId = j;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public static List<SelectionModel> getSelections(String str) {
        return new Select().distinct().from(SelectionModel.class).where("description LIKE ?", "%" + str + "%").groupBy("description").orderBy("description ASC").execute();
    }

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public String getVehicleInfo() {
        return getDescription();
    }

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public long getHeaderId() {
        return getBrandId();
    }

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public String getHeader() {
        return getBrand();
    }
}
