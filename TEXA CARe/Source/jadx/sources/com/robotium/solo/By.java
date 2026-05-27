package com.robotium.solo;

/* JADX INFO: loaded from: classes.dex */
public abstract class By {
    public String getValue() {
        return "";
    }

    public static By id(String str) {
        return new Id(str);
    }

    public static By xpath(String str) {
        return new Xpath(str);
    }

    public static By cssSelector(String str) {
        return new CssSelector(str);
    }

    public static By name(String str) {
        return new Name(str);
    }

    public static By className(String str) {
        return new ClassName(str);
    }

    public static By textContent(String str) {
        return new Text(str);
    }

    public static By tagName(String str) {
        return new TagName(str);
    }

    static class Id extends By {
        private final String id;

        public Id(String str) {
            this.id = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.id;
        }
    }

    static class Xpath extends By {
        private final String xpath;

        public Xpath(String str) {
            this.xpath = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.xpath;
        }
    }

    static class CssSelector extends By {
        private final String selector;

        public CssSelector(String str) {
            this.selector = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.selector;
        }
    }

    static class Name extends By {
        private final String name;

        public Name(String str) {
            this.name = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.name;
        }
    }

    static class ClassName extends By {
        private final String className;

        public ClassName(String str) {
            this.className = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.className;
        }
    }

    static class Text extends By {
        private final String textContent;

        public Text(String str) {
            this.textContent = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.textContent;
        }
    }

    static class TagName extends By {
        private final String tagName;

        public TagName(String str) {
            this.tagName = str;
        }

        @Override // com.robotium.solo.By
        public String getValue() {
            return this.tagName;
        }
    }
}
