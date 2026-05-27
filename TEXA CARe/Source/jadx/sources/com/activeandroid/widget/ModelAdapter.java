package com.activeandroid.widget;

import android.content.Context;
import android.widget.ArrayAdapter;
import com.activeandroid.Model;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ModelAdapter<T extends Model> extends ArrayAdapter<T> {
    public ModelAdapter(Context context, int i) {
        super(context, i);
    }

    public ModelAdapter(Context context, int i, int i2) {
        super(context, i, i2);
    }

    public ModelAdapter(Context context, int i, List<T> list) {
        super(context, i, list);
    }

    public ModelAdapter(Context context, int i, int i2, List<T> list) {
        super(context, i, i2, list);
    }

    public void setData(Collection<? extends T> collection) {
        clear();
        if (collection != null) {
            Iterator<? extends T> it = collection.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        T item = getItem(i);
        if (item != null) {
            return item.getId().longValue();
        }
        return -1L;
    }
}
