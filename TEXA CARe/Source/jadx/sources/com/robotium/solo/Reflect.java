package com.robotium.solo;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
class Reflect {
    private Object object;

    public Reflect(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Object can not be null.");
        }
        this.object = obj;
    }

    public FieldRf field(String str) {
        return new FieldRf(this.object, str);
    }

    public class FieldRf {
        private Class<?> clazz;
        private String name;
        private Object object;

        public FieldRf(Object obj, String str) {
            this.object = obj;
            this.name = str;
        }

        public <T> T out(Class<T> cls) {
            return cls.cast(getValue(getField()));
        }

        public void in(Object obj) {
            try {
                getField().set(this.object, obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            }
        }

        public FieldRf type(Class<?> cls) {
            this.clazz = cls;
            return this;
        }

        private Field getField() {
            if (this.clazz == null) {
                this.clazz = this.object.getClass();
            }
            Field declaredField = null;
            try {
                declaredField = this.clazz.getDeclaredField(this.name);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException unused) {
                return declaredField;
            }
        }

        private Object getValue(Field field) {
            if (field == null) {
                return null;
            }
            try {
                return field.get(this.object);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }
}
