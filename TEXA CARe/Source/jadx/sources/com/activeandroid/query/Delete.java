package com.activeandroid.query;

import com.activeandroid.Model;

/* JADX INFO: loaded from: classes.dex */
public final class Delete implements Sqlable {
    @Override // com.activeandroid.query.Sqlable
    public String toSql() {
        return "DELETE ";
    }

    public From from(Class<? extends Model> cls) {
        return new From(cls, this);
    }
}
