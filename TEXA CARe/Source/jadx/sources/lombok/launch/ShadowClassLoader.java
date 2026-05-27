package lombok.launch;

import com.texa.carelib.core.utils.Version;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
class ShadowClassLoader extends ClassLoader {
    private static final String SELF_NAME = "lombok/launch/ShadowClassLoader.class";
    private final String SELF_BASE;
    private final File SELF_BASE_FILE;
    private final int SELF_BASE_LENGTH;
    private Map<String, Boolean> fileRootCache;
    private final List<String> highlanders;
    private Map<String, Boolean> jarLocCache;
    private final Map<String, Object> mapJarPathToTracker;
    private final List<File> override;
    private final List<String> parentExclusion;
    private final String sclSuffix;
    private static final ConcurrentMap<String, Class<?>> highlanderMap = new ConcurrentHashMap();
    private static final Map<Object, String> mapTrackerToJarPath = new WeakHashMap();
    private static final Map<Object, Set<String>> mapTrackerToJarContents = new WeakHashMap();

    /* JADX WARN: Removed duplicated region for block: B:56:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    ShadowClassLoader(ClassLoader classLoader, String str, String str2, List<String> list, List<String> list2) {
        super(classLoader);
        this.override = new ArrayList();
        this.parentExclusion = new ArrayList();
        this.highlanders = new ArrayList();
        this.mapJarPathToTracker = new HashMap();
        this.fileRootCache = new HashMap();
        this.jarLocCache = new HashMap();
        this.sclSuffix = str;
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String strReplace = it.next().replace(Version.SEPARATOR, "/");
                if (!strReplace.endsWith("/")) {
                    strReplace = String.valueOf(strReplace) + "/";
                }
                this.parentExclusion.add(strReplace);
            }
        }
        if (list2 != null) {
            Iterator<String> it2 = list2.iterator();
            while (it2.hasNext()) {
                this.highlanders.add(it2.next());
            }
        }
        if (str2 != null) {
            this.SELF_BASE = str2;
            this.SELF_BASE_LENGTH = str2.length();
        } else {
            URL resource = ShadowClassLoader.class.getResource("ShadowClassLoader.class");
            String string = resource == null ? null : resource.toString();
            if (string == null || !string.endsWith(SELF_NAME)) {
                ClassLoader classLoader2 = ShadowClassLoader.class.getClassLoader();
                StringBuilder sb = new StringBuilder("ShadowLoader can't find itself. SCL loader type: ");
                sb.append(classLoader2 == null ? "*NULL*" : classLoader2.getClass().toString());
                throw new RuntimeException(sb.toString());
            }
            int length = string.length() - 37;
            this.SELF_BASE_LENGTH = length;
            this.SELF_BASE = urlDecode(string.substring(0, length));
        }
        if (this.SELF_BASE.startsWith("jar:file:") && this.SELF_BASE.endsWith("!/")) {
            this.SELF_BASE_FILE = new File(this.SELF_BASE.substring(9, r7.length() - 2));
        } else if (this.SELF_BASE.startsWith("file:")) {
            this.SELF_BASE_FILE = new File(this.SELF_BASE.substring(5));
        } else {
            this.SELF_BASE_FILE = new File(this.SELF_BASE);
        }
        String property = System.getProperty("shadow.override." + str);
        if (property == null || property.isEmpty()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder("\\s*");
        sb2.append(File.pathSeparatorChar == ';' ? ";" : ":");
        sb2.append("\\s*");
        for (String str3 : property.split(sb2.toString())) {
            if (!str3.endsWith("/*")) {
                if (str3.endsWith(String.valueOf(File.separator) + "*")) {
                    addOverrideJarDir(str3.substring(0, str3.length() - 2));
                } else {
                    addOverrideClasspathEntry(str3);
                }
            }
        }
    }

    private Set<String> getOrMakeJarListing(String str) {
        Map<Object, String> map = mapTrackerToJarPath;
        synchronized (map) {
            Object obj = this.mapJarPathToTracker.get(str);
            if (obj != null) {
                return mapTrackerToJarContents.get(obj);
            }
            for (Map.Entry<Object, String> entry : map.entrySet()) {
                if (entry.getValue().equals(str)) {
                    Object key = entry.getKey();
                    this.mapJarPathToTracker.put(str, key);
                    return mapTrackerToJarContents.get(key);
                }
            }
            Object obj2 = new Object();
            Set<String> jarMemberSet = getJarMemberSet(str);
            mapTrackerToJarContents.put(obj2, jarMemberSet);
            mapTrackerToJarPath.put(obj2, str);
            this.mapJarPathToTracker.put(str, obj2);
            return jarMemberSet;
        }
    }

    private Set<String> getJarMemberSet(String str) {
        try {
            JarFile jarFile = new JarFile(str);
            int iHighestOneBit = Integer.highestOneBit(jarFile.size());
            if (iHighestOneBit != jarFile.size()) {
                iHighestOneBit <<= 1;
            }
            if (iHighestOneBit == 0) {
                iHighestOneBit = 1;
            }
            HashSet hashSet = new HashSet(iHighestOneBit >> 1, 2);
            try {
                Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                    if (!jarEntryNextElement.isDirectory()) {
                        hashSet.add(jarEntryNextElement.getName());
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                jarFile.close();
                throw th;
            }
            jarFile.close();
            return hashSet;
        } catch (Exception unused2) {
            return Collections.emptySet();
        }
    }

    private URL getResourceFromLocation(String str, String str2, File file) {
        File absoluteFile;
        File file2;
        if (file.isDirectory()) {
            if (str2 != null) {
                try {
                    File file3 = new File(file, str2);
                    if (file3.isFile() && file3.canRead()) {
                        return file3.toURI().toURL();
                    }
                    file2 = new File(file, str);
                    if (file2.isFile() && file2.canRead()) {
                        return file2.toURI().toURL();
                    }
                } catch (MalformedURLException unused) {
                }
            } else {
                file2 = new File(file, str);
                if (file2.isFile()) {
                    return file2.toURI().toURL();
                }
            }
            return null;
        }
        if (file.isFile() && file.canRead()) {
            try {
                absoluteFile = file.getCanonicalFile();
            } catch (Exception unused2) {
                absoluteFile = file.getAbsoluteFile();
            }
            Set<String> orMakeJarListing = getOrMakeJarListing(absoluteFile.getAbsolutePath());
            String string = absoluteFile.toURI().toString();
            try {
                if (orMakeJarListing.contains(str2)) {
                    return new URI("jar:" + string + "!/" + str2).toURL();
                }
            } catch (Exception unused3) {
            }
            try {
                if (orMakeJarListing.contains(str)) {
                    return new URI("jar:" + string + "!/" + str).toURL();
                }
            } catch (Exception unused4) {
            }
        }
        return null;
    }

    private boolean partOfShadow(String str, String str2) {
        if (str2.startsWith("java/") || str2.startsWith("sun/")) {
            return false;
        }
        return inOwnBase(str, str2) || isPartOfShadowSuffix(str, str2, this.sclSuffix);
    }

    private boolean inOwnBase(String str, String str2) {
        return str != null && str.length() == this.SELF_BASE_LENGTH + str2.length() && this.SELF_BASE.regionMatches(0, str, 0, this.SELF_BASE_LENGTH);
    }

    private static boolean sclFileContainsSuffix(InputStream inputStream, String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return false;
            }
            String strTrim = line.trim();
            if (!strTrim.isEmpty() && strTrim.charAt(0) != '#' && strTrim.equals(str)) {
                return true;
            }
        }
    }

    private static String urlDecode(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new InternalError("UTF-8 not supported");
        }
    }

    private boolean isPartOfShadowSuffixFileBased(String str, String str2) {
        String str3 = String.valueOf(str) + "::" + str2;
        Boolean bool = this.fileRootCache.get(str3);
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(String.valueOf(str) + "/META-INF/ShadowClassLoader"));
            try {
                boolean zSclFileContainsSuffix = sclFileContainsSuffix(fileInputStream, str2);
                this.fileRootCache.put(str3, Boolean.valueOf(zSclFileContainsSuffix));
                return zSclFileContainsSuffix;
            } finally {
                fileInputStream.close();
            }
        } catch (FileNotFoundException unused) {
            this.fileRootCache.put(str3, false);
            return false;
        } catch (IOException unused2) {
            this.fileRootCache.put(str3, false);
            return false;
        }
    }

    private boolean isPartOfShadowSuffixJarBased(String str, String str2) {
        ZipEntry nextEntry;
        String str3 = String.valueOf(str) + "::" + str2;
        Boolean bool = this.jarLocCache.get(str3);
        if (bool != null) {
            return bool.booleanValue();
        }
        if (str.startsWith("file:/")) {
            str = urlDecode(str.substring(5));
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                ZipInputStream zipInputStream = new ZipInputStream(fileInputStream);
                do {
                    nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        this.jarLocCache.put(str3, false);
                        return false;
                    }
                } while (!"META-INF/ShadowClassLoader".equals(nextEntry.getName()));
                boolean zSclFileContainsSuffix = sclFileContainsSuffix(zipInputStream, str2);
                this.jarLocCache.put(str3, Boolean.valueOf(zSclFileContainsSuffix));
                return zSclFileContainsSuffix;
            } finally {
                fileInputStream.close();
            }
        } catch (FileNotFoundException unused) {
            this.jarLocCache.put(str3, false);
            return false;
        } catch (IOException unused2) {
            this.jarLocCache.put(str3, false);
            return false;
        }
    }

    private boolean isPartOfShadowSuffix(String str, String str2, String str3) {
        int iIndexOf;
        if (str == null) {
            return false;
        }
        if (str.startsWith("file:/")) {
            String strUrlDecode = urlDecode(str.substring(5));
            if (strUrlDecode.length() > str2.length() && strUrlDecode.endsWith(str2) && strUrlDecode.charAt((strUrlDecode.length() - str2.length()) - 1) == '/') {
                return isPartOfShadowSuffixFileBased(strUrlDecode.substring(0, (strUrlDecode.length() - str2.length()) - 1), str3);
            }
            return false;
        }
        if (!str.startsWith("jar:") || (iIndexOf = str.indexOf(33)) == -1) {
            return false;
        }
        return isPartOfShadowSuffixJarBased(str.substring(4, iIndexOf), str3);
    }

    @Override // java.lang.ClassLoader
    public Enumeration<URL> getResources(String str) throws IOException {
        String str2;
        URL resourceFromLocation;
        if (str.endsWith(".class")) {
            str2 = String.valueOf(str.substring(0, str.length() - 6)) + ".SCL." + this.sclSuffix;
        } else {
            str2 = null;
        }
        Vector vector = new Vector();
        Iterator<File> it = this.override.iterator();
        while (it.hasNext()) {
            URL resourceFromLocation2 = getResourceFromLocation(str, str2, it.next());
            if (resourceFromLocation2 != null) {
                vector.add(resourceFromLocation2);
            }
        }
        if (this.override.isEmpty() && (resourceFromLocation = getResourceFromLocation(str, str2, this.SELF_BASE_FILE)) != null) {
            vector.add(resourceFromLocation);
        }
        Enumeration<URL> resources = super.getResources(str);
        while (resources.hasMoreElements()) {
            URL urlNextElement = resources.nextElement();
            if (!partOfShadow(urlNextElement.toString(), str)) {
                vector.add(urlNextElement);
            }
        }
        if (str2 != null) {
            Enumeration<URL> resources2 = super.getResources(str2);
            while (resources2.hasMoreElements()) {
                URL urlNextElement2 = resources2.nextElement();
                if (!partOfShadow(urlNextElement2.toString(), str2)) {
                    vector.add(urlNextElement2);
                }
            }
        }
        return vector.elements();
    }

    @Override // java.lang.ClassLoader
    public URL getResource(String str) {
        return getResource_(str, false);
    }

    private URL getResource_(String str, boolean z) {
        String str2;
        URL resource;
        if (str.endsWith(".class")) {
            str2 = String.valueOf(str.substring(0, str.length() - 6)) + ".SCL." + this.sclSuffix;
        } else {
            str2 = null;
        }
        Iterator<File> it = this.override.iterator();
        while (it.hasNext()) {
            URL resourceFromLocation = getResourceFromLocation(str, str2, it.next());
            if (resourceFromLocation != null) {
                return resourceFromLocation;
            }
        }
        if (!this.override.isEmpty()) {
            if (z) {
                return null;
            }
            if (str2 != null) {
                try {
                    URL resourceSkippingSelf = getResourceSkippingSelf(str2);
                    if (resourceSkippingSelf != null) {
                        return resourceSkippingSelf;
                    }
                } catch (IOException unused) {
                }
            }
            try {
                return getResourceSkippingSelf(str);
            } catch (IOException unused2) {
                return null;
            }
        }
        URL resourceFromLocation2 = getResourceFromLocation(str, str2, this.SELF_BASE_FILE);
        if (resourceFromLocation2 != null) {
            return resourceFromLocation2;
        }
        if (str2 != null && (resource = super.getResource(str2)) != null && (!z || partOfShadow(resource.toString(), str2))) {
            return resource;
        }
        URL resource2 = super.getResource(str);
        if (resource2 == null || (z && !partOfShadow(resource2.toString(), str))) {
            return null;
        }
        return resource2;
    }

    private boolean exclusionListMatch(String str) {
        Iterator<String> it = this.parentExclusion.iterator();
        while (it.hasNext()) {
            if (str.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    private URL getResourceSkippingSelf(String str) throws IOException {
        URL resource = super.getResource(str);
        if (resource == null) {
            return null;
        }
        if (!partOfShadow(resource.toString(), str)) {
            return resource;
        }
        Enumeration<URL> resources = super.getResources(str);
        while (resources.hasMoreElements()) {
            URL urlNextElement = resources.nextElement();
            if (!partOfShadow(urlNextElement.toString(), str)) {
                return urlNextElement;
            }
        }
        return null;
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        Class<?> clsDefineClass;
        Class<?> cls;
        Class<?> clsPutIfAbsent;
        Class<?> cls2;
        Class<?> clsFindLoadedClass = findLoadedClass(str);
        if (clsFindLoadedClass != null) {
            return clsFindLoadedClass;
        }
        if (this.highlanders.contains(str) && (cls2 = highlanderMap.get(str)) != null) {
            return cls2;
        }
        String str2 = String.valueOf(str.replace(Version.SEPARATOR, "/")) + ".class";
        URL resource_ = getResource_(str2, true);
        if (resource_ == null && !exclusionListMatch(str2)) {
            try {
                return super.loadClass(str, z);
            } catch (ClassNotFoundException e) {
                resource_ = getResource_("secondaryLoading.SCL." + this.sclSuffix + "/" + str.replace(Version.SEPARATOR, "/") + ".SCL." + this.sclSuffix, true);
                if (resource_ == null) {
                    throw e;
                }
            }
        }
        if (resource_ == null) {
            throw new ClassNotFoundException(str);
        }
        try {
            InputStream inputStreamOpenStream = resource_.openStream();
            try {
                byte[] bArr = new byte[65536];
                int i = 0;
                while (true) {
                    int i2 = inputStreamOpenStream.read(bArr, i, bArr.length - i);
                    if (i2 == -1) {
                        break;
                    }
                    i += i2;
                    if (i == bArr.length) {
                        byte[] bArr2 = new byte[bArr.length * 2];
                        System.arraycopy(bArr, 0, bArr2, 0, i);
                        bArr = bArr2;
                    }
                }
                try {
                    clsDefineClass = defineClass(str, bArr, 0, i);
                } catch (LinkageError e2) {
                    if (this.highlanders.contains(str) && (cls = highlanderMap.get(str)) != null) {
                        return cls;
                    }
                    try {
                        Class<?> clsFindLoadedClass2 = findLoadedClass(str);
                        if (clsFindLoadedClass2 == null) {
                            throw e2;
                        }
                        clsDefineClass = clsFindLoadedClass2;
                    } catch (LinkageError unused) {
                        throw e2;
                    }
                }
                if (this.highlanders.contains(str) && (clsPutIfAbsent = highlanderMap.putIfAbsent(str, clsDefineClass)) != null) {
                    clsDefineClass = clsPutIfAbsent;
                }
                if (z) {
                    resolveClass(clsDefineClass);
                }
                return clsDefineClass;
            } finally {
                inputStreamOpenStream.close();
            }
        } catch (IOException e3) {
            throw new ClassNotFoundException("I/O exception reading class " + str, e3);
        }
    }

    public void addOverrideJarDir(String str) {
        for (File file : new File(str).listFiles()) {
            if (file.getName().toLowerCase().endsWith(".jar") && file.canRead() && file.isFile()) {
                this.override.add(file);
            }
        }
    }

    public void addOverrideClasspathEntry(String str) {
        this.override.add(new File(str));
    }
}
