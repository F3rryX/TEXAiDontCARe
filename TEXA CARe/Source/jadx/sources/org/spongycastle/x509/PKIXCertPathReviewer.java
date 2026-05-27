package org.spongycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.x509.AccessDescription;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.AuthorityInformationAccess;
import org.spongycastle.asn1.x509.AuthorityKeyIdentifier;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.DistributionPointName;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.GeneralSubtree;
import org.spongycastle.asn1.x509.IssuingDistributionPoint;
import org.spongycastle.asn1.x509.NameConstraints;
import org.spongycastle.asn1.x509.PolicyInformation;
import org.spongycastle.asn1.x509.qualified.MonetaryValue;
import org.spongycastle.asn1.x509.qualified.QCStatement;
import org.spongycastle.i18n.ErrorBundle;
import org.spongycastle.i18n.LocaleString;
import org.spongycastle.i18n.filter.TrustedInput;
import org.spongycastle.i18n.filter.UntrustedInput;
import org.spongycastle.i18n.filter.UntrustedUrlInput;
import org.spongycastle.jce.provider.AnnotatedException;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.provider.PKIXNameConstraintValidator;
import org.spongycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.spongycastle.jce.provider.PKIXPolicyNode;
import org.spongycastle.jce.provider.RFC3280CertPathUtilities;
import org.spongycastle.util.Integers;

/* JADX INFO: loaded from: classes3.dex */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String RESOURCE_NAME = "org.spongycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected List[] errors;
    private boolean initialized;
    protected int n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = Extension.qCStatements.getId();
    private static final String CRL_DIST_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        Objects.requireNonNull(certPath, "certPath was null");
        this.certPath = certPath;
        List<? extends Certificate> certificates = certPath.getCertificates();
        this.certs = certificates;
        this.n = certificates.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
        }
        PKIXParameters pKIXParameters2 = (PKIXParameters) pKIXParameters.clone();
        this.pkixParams = pKIXParameters2;
        this.validDate = getValidDate(pKIXParameters2);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    public PKIXCertPathReviewer() {
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.n;
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List getErrors(int i) {
        doChecks();
        return this.errors[i + 1];
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }

    public List getNotifications(int i) {
        doChecks();
        return this.notifications[i + 1];
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    public boolean isValidCertPath() {
        doChecks();
        int i = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i >= listArr.length) {
                return true;
            }
            if (!listArr[i].isEmpty()) {
                return false;
            }
            i++;
        }
    }

    protected void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    protected void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    protected void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    protected void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.notifications != null) {
            return;
        }
        int i = this.n;
        this.notifications = new List[i + 1];
        this.errors = new List[i + 1];
        int i2 = 0;
        while (true) {
            List[] listArr = this.notifications;
            if (i2 < listArr.length) {
                listArr[i2] = new ArrayList();
                this.errors[i2] = new ArrayList();
                i2++;
            } else {
                checkSignatures();
                checkNameConstraints();
                checkPathLength();
                checkPolicy();
                checkCriticalExtensions();
                return;
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        for (int i = 0; i < aSN1Sequence2.size(); i++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e2) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e2, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e3) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e3, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e4) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e4, this.certPath, size);
                        }
                    } catch (IOException e5) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e5, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) getExtensionValue(x509Certificate, NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = NameConstraints.getInstance(aSN1Sequence3);
                        GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            for (int i2 = 0; i2 != excludedSubtrees.length; i2++) {
                                pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i2]);
                            }
                        }
                    }
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e6, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        BigInteger pathLenConstraint;
        int iIntValue;
        int i = this.n;
        int i2 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!isSelfIssued(x509Certificate)) {
                if (i <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLengthExtended"));
                }
                i--;
                i2++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && (pathLenConstraint = basicConstraints.getPathLenConstraint()) != null && (iIntValue = pathLenConstraint.intValue()) < i) {
                i = iIntValue;
            }
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i2)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkSignatures() {
        TrustAnchor trustAnchor;
        TrustAnchor trustAnchor2;
        X500Principal x500Principal;
        X509Certificate trustedCert;
        PublicKey cAPublicKey;
        int size;
        int i;
        int i2;
        PublicKey publicKey;
        X500Principal x500Principal2;
        TrustAnchor trustAnchor3;
        X509Certificate x509Certificate;
        ASN1Primitive extensionValue;
        ASN1Primitive extensionValue2;
        AuthorityKeyIdentifier authorityKeyIdentifier;
        GeneralNames authorityCertIssuer;
        boolean[] keyUsage;
        X509Certificate x509Certificate2;
        Collection trustAnchors;
        PublicKey cAPublicKey2;
        char c = 2;
        char c2 = 0;
        char c3 = 1;
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathValidDate", new Object[]{new TrustedInput(this.validDate), new TrustedInput(new Date())}));
        try {
            List list = this.certs;
            x509Certificate2 = (X509Certificate) list.get(list.size() - 1);
            trustAnchors = getTrustAnchors(x509Certificate2, this.pkixParams.getTrustAnchors());
        } catch (CertPathReviewerException e) {
            e = e;
            trustAnchor = null;
        } catch (Throwable th) {
            th = th;
            trustAnchor = null;
        }
        if (trustAnchors.size() > 1) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.conflictingTrustAnchors", new Object[]{Integers.valueOf(trustAnchors.size()), new UntrustedInput(x509Certificate2.getIssuerX500Principal())}));
        } else if (trustAnchors.isEmpty()) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noTrustAnchorFound", new Object[]{new UntrustedInput(x509Certificate2.getIssuerX500Principal()), Integers.valueOf(this.pkixParams.getTrustAnchors().size())}));
        } else {
            trustAnchor = (TrustAnchor) trustAnchors.iterator().next();
            try {
                if (trustAnchor.getTrustedCert() != null) {
                    cAPublicKey2 = trustAnchor.getTrustedCert().getPublicKey();
                } else {
                    cAPublicKey2 = trustAnchor.getCAPublicKey();
                }
                try {
                    CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, cAPublicKey2, this.pkixParams.getSigProvider());
                } catch (SignatureException unused) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustButInvalidCert"));
                } catch (Exception unused2) {
                }
            } catch (CertPathReviewerException e2) {
                e = e2;
                addError(e.getErrorMessage());
            } catch (Throwable th2) {
                th = th2;
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknown", new Object[]{new UntrustedInput(th.getMessage()), new UntrustedInput(th)}));
            }
            trustAnchor2 = trustAnchor;
            if (trustAnchor2 == null) {
                X509Certificate trustedCert2 = trustAnchor2.getTrustedCert();
                try {
                    if (trustedCert2 != null) {
                        x500Principal = getSubjectPrincipal(trustedCert2);
                    } else {
                        x500Principal = new X500Principal(trustAnchor2.getCAName());
                    }
                } catch (IllegalArgumentException unused3) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustDNInvalid", new Object[]{new UntrustedInput(trustAnchor2.getCAName())}));
                    x500Principal = null;
                }
                if (trustedCert2 != null && (keyUsage = trustedCert2.getKeyUsage()) != null && !keyUsage[5]) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustKeyUsage"));
                }
            } else {
                x500Principal = null;
            }
            if (trustAnchor2 == null) {
                trustedCert = trustAnchor2.getTrustedCert();
                if (trustedCert != null) {
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    cAPublicKey = trustAnchor2.getCAPublicKey();
                }
                try {
                    AlgorithmIdentifier algorithmIdentifier = getAlgorithmIdentifier(cAPublicKey);
                    algorithmIdentifier.getAlgorithm();
                    algorithmIdentifier.getParameters();
                } catch (CertPathValidatorException unused4) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustPubKeyError"));
                }
            } else {
                trustedCert = null;
                cAPublicKey = null;
            }
            X509Certificate x509Certificate3 = trustedCert;
            X500Principal subjectX500Principal = x500Principal;
            PublicKey nextWorkingKey = cAPublicKey;
            size = this.certs.size() - 1;
            while (size >= 0) {
                int i3 = this.n - size;
                X509Certificate x509Certificate4 = (X509Certificate) this.certs.get(size);
                if (nextWorkingKey != null) {
                    try {
                        CertPathValidatorUtilities.verifyX509Certificate(x509Certificate4, nextWorkingKey, this.pkixParams.getSigProvider());
                    } catch (GeneralSecurityException e3) {
                        Object[] objArr = new Object[3];
                        objArr[c2] = e3.getMessage();
                        objArr[c3] = e3;
                        objArr[c] = e3.getClass().getName();
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.signatureNotVerified", objArr), size);
                    }
                } else if (isSelfIssued(x509Certificate4)) {
                    try {
                        CertPathValidatorUtilities.verifyX509Certificate(x509Certificate4, x509Certificate4.getPublicKey(), this.pkixParams.getSigProvider());
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                    } catch (GeneralSecurityException e4) {
                        Object[] objArr2 = new Object[3];
                        objArr2[c2] = e4.getMessage();
                        objArr2[c3] = e4;
                        objArr2[c] = e4.getClass().getName();
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.signatureNotVerified", objArr2), size);
                    }
                } else {
                    ErrorBundle errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.NoIssuerPublicKey");
                    byte[] extensionValue3 = x509Certificate4.getExtensionValue(Extension.authorityKeyIdentifier.getId());
                    if (extensionValue3 != null && (authorityCertIssuer = (authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(DEROctetString.getInstance(extensionValue3).getOctets())).getAuthorityCertIssuer()) != null) {
                        GeneralName generalName = authorityCertIssuer.getNames()[c2];
                        BigInteger authorityCertSerialNumber = authorityKeyIdentifier.getAuthorityCertSerialNumber();
                        if (authorityCertSerialNumber != null) {
                            Object[] objArr3 = new Object[7];
                            objArr3[c2] = new LocaleString(RESOURCE_NAME, "missingIssuer");
                            objArr3[1] = " \"";
                            objArr3[2] = generalName;
                            objArr3[3] = "\" ";
                            objArr3[4] = new LocaleString(RESOURCE_NAME, "missingSerial");
                            objArr3[5] = " ";
                            objArr3[6] = authorityCertSerialNumber;
                            errorBundle.setExtraArguments(objArr3);
                        }
                    }
                    addError(errorBundle, size);
                }
                try {
                    x509Certificate4.checkValidity(this.validDate);
                } catch (CertificateExpiredException unused5) {
                    Object[] objArr4 = new Object[1];
                    objArr4[c2] = new TrustedInput(x509Certificate4.getNotAfter());
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certificateExpired", objArr4), size);
                } catch (CertificateNotYetValidException unused6) {
                    Object[] objArr5 = new Object[1];
                    objArr5[c2] = new TrustedInput(x509Certificate4.getNotBefore());
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certificateNotYetValid", objArr5), size);
                }
                if (this.pkixParams.isRevocationEnabled()) {
                    try {
                        extensionValue2 = getExtensionValue(x509Certificate4, CRL_DIST_POINTS);
                    } catch (AnnotatedException unused7) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlDistPtExtError"), size);
                    }
                    CRLDistPoint cRLDistPoint = extensionValue2 != null ? CRLDistPoint.getInstance(extensionValue2) : null;
                    try {
                        extensionValue = getExtensionValue(x509Certificate4, AUTH_INFO_ACCESS);
                    } catch (AnnotatedException unused8) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlAuthInfoAccError"), size);
                    }
                    AuthorityInformationAccess authorityInformationAccess = extensionValue != null ? AuthorityInformationAccess.getInstance(extensionValue) : null;
                    Vector cRLDistUrls = getCRLDistUrls(cRLDistPoint);
                    Vector oCSPUrls = getOCSPUrls(authorityInformationAccess);
                    Iterator it = cRLDistUrls.iterator();
                    while (it.hasNext()) {
                        Object[] objArr6 = new Object[1];
                        objArr6[c2] = new UntrustedUrlInput(it.next());
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlDistPoint", objArr6), size);
                        x509Certificate4 = x509Certificate4;
                    }
                    X509Certificate x509Certificate5 = x509Certificate4;
                    Iterator it2 = oCSPUrls.iterator();
                    while (it2.hasNext()) {
                        Object[] objArr7 = new Object[1];
                        objArr7[c2] = new UntrustedUrlInput(it2.next());
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ocspLocation", objArr7), size);
                    }
                    try {
                        x509Certificate = x509Certificate5;
                        i = i3;
                        i2 = size;
                        publicKey = nextWorkingKey;
                        x500Principal2 = subjectX500Principal;
                        trustAnchor3 = trustAnchor2;
                        try {
                            checkRevocation(this.pkixParams, x509Certificate, this.validDate, x509Certificate3, nextWorkingKey, cRLDistUrls, oCSPUrls, i2);
                        } catch (CertPathReviewerException e5) {
                            e = e5;
                            addError(e.getErrorMessage(), i2);
                        }
                    } catch (CertPathReviewerException e6) {
                        e = e6;
                        i = i3;
                        i2 = size;
                        publicKey = nextWorkingKey;
                        x500Principal2 = subjectX500Principal;
                        trustAnchor3 = trustAnchor2;
                        x509Certificate = x509Certificate5;
                    }
                } else {
                    x509Certificate = x509Certificate4;
                    i = i3;
                    i2 = size;
                    publicKey = nextWorkingKey;
                    x500Principal2 = subjectX500Principal;
                    trustAnchor3 = trustAnchor2;
                }
                if (x500Principal2 != null && !x509Certificate.getIssuerX500Principal().equals(x500Principal2)) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certWrongIssuer", new Object[]{x500Principal2.getName(), x509Certificate.getIssuerX500Principal().getName()}), i2);
                }
                if (i != this.n) {
                    if (x509Certificate != null && x509Certificate.getVersion() == 1) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCACert"), i2);
                    }
                    try {
                        BasicConstraints basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
                        if (basicConstraints != null) {
                            if (!basicConstraints.isCA()) {
                                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCACert"), i2);
                            }
                        } else {
                            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBasicConstraints"), i2);
                        }
                    } catch (AnnotatedException unused9) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.errorProcesingBC"), i2);
                    }
                    boolean[] keyUsage2 = x509Certificate.getKeyUsage();
                    if (keyUsage2 != null && !keyUsage2[5]) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCertSign"), i2);
                    }
                }
                subjectX500Principal = x509Certificate.getSubjectX500Principal();
                try {
                    nextWorkingKey = getNextWorkingKey(this.certs, i2);
                } catch (CertPathValidatorException unused10) {
                    nextWorkingKey = publicKey;
                }
                try {
                    AlgorithmIdentifier algorithmIdentifier2 = getAlgorithmIdentifier(nextWorkingKey);
                    algorithmIdentifier2.getAlgorithm();
                    algorithmIdentifier2.getParameters();
                } catch (CertPathValidatorException unused11) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pubKeyError"), i2);
                }
                size = i2 - 1;
                trustAnchor2 = trustAnchor3;
                x509Certificate3 = x509Certificate;
                c = 2;
                c2 = 0;
                c3 = 1;
            }
            this.trustAnchor = trustAnchor2;
            this.subjectPublicKey = nextWorkingKey;
        }
        trustAnchor = null;
        trustAnchor2 = trustAnchor;
        if (trustAnchor2 == null) {
        }
        if (trustAnchor2 == null) {
        }
        X509Certificate x509Certificate32 = trustedCert;
        X500Principal subjectX500Principal2 = x500Principal;
        PublicKey nextWorkingKey2 = cAPublicKey;
        size = this.certs.size() - 1;
        while (size >= 0) {
        }
        this.trustAnchor = trustAnchor2;
        this.subjectPublicKey = nextWorkingKey2;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x023f A[Catch: CertPathReviewerException -> 0x0609, TryCatch #0 {CertPathReviewerException -> 0x0609, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d4, B:194:0x03e5, B:196:0x03ef, B:207:0x0431, B:199:0x03fb, B:200:0x0409, B:201:0x040a, B:202:0x0418, B:204:0x041a, B:205:0x0428, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0440, B:210:0x044d, B:211:0x044e, B:215:0x045f, B:217:0x0469, B:218:0x046e, B:220:0x0474, B:223:0x0482, B:230:0x049b, B:309:0x05ef, B:310:0x05fb, B:233:0x04a6, B:234:0x04b2, B:235:0x04b3, B:237:0x04b9, B:239:0x04c1, B:241:0x04c7, B:244:0x04d1, B:245:0x04d4, B:247:0x04da, B:249:0x04ea, B:250:0x04ee, B:252:0x04f4, B:253:0x04fc, B:254:0x04ff, B:255:0x0504, B:256:0x0508, B:258:0x050e, B:260:0x051e, B:262:0x0526, B:263:0x0529, B:265:0x052f, B:267:0x053b, B:268:0x053f, B:269:0x0542, B:270:0x0545, B:271:0x0551, B:273:0x0556, B:275:0x0560, B:276:0x0563, B:278:0x0569, B:280:0x0579, B:281:0x057d, B:283:0x0583, B:285:0x0593, B:286:0x0597, B:287:0x059a, B:288:0x059d, B:289:0x05a3, B:291:0x05a9, B:293:0x05bb, B:296:0x05c5, B:298:0x05cb, B:299:0x05ce, B:301:0x05d4, B:303:0x05e0, B:304:0x05e4, B:305:0x05e7, B:311:0x05fc, B:312:0x0608), top: B:316:0x006f, inners: #1, #2, #3, #4, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0216 A[Catch: CertPathReviewerException -> 0x0609, TryCatch #0 {CertPathReviewerException -> 0x0609, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d4, B:194:0x03e5, B:196:0x03ef, B:207:0x0431, B:199:0x03fb, B:200:0x0409, B:201:0x040a, B:202:0x0418, B:204:0x041a, B:205:0x0428, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0440, B:210:0x044d, B:211:0x044e, B:215:0x045f, B:217:0x0469, B:218:0x046e, B:220:0x0474, B:223:0x0482, B:230:0x049b, B:309:0x05ef, B:310:0x05fb, B:233:0x04a6, B:234:0x04b2, B:235:0x04b3, B:237:0x04b9, B:239:0x04c1, B:241:0x04c7, B:244:0x04d1, B:245:0x04d4, B:247:0x04da, B:249:0x04ea, B:250:0x04ee, B:252:0x04f4, B:253:0x04fc, B:254:0x04ff, B:255:0x0504, B:256:0x0508, B:258:0x050e, B:260:0x051e, B:262:0x0526, B:263:0x0529, B:265:0x052f, B:267:0x053b, B:268:0x053f, B:269:0x0542, B:270:0x0545, B:271:0x0551, B:273:0x0556, B:275:0x0560, B:276:0x0563, B:278:0x0569, B:280:0x0579, B:281:0x057d, B:283:0x0583, B:285:0x0593, B:286:0x0597, B:287:0x059a, B:288:0x059d, B:289:0x05a3, B:291:0x05a9, B:293:0x05bb, B:296:0x05c5, B:298:0x05cb, B:299:0x05ce, B:301:0x05d4, B:303:0x05e0, B:304:0x05e4, B:305:0x05e7, B:311:0x05fc, B:312:0x0608), top: B:316:0x006f, inners: #1, #2, #3, #4, #5, #6, #7, #8, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkPolicy() {
        int i;
        int i2;
        PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode;
        Set<String> set;
        String str;
        int i3;
        int i4;
        HashSet hashSet;
        String str2;
        int i5;
        int iIntValue;
        int iIntValue2;
        String str3;
        HashSet hashSet2;
        HashSet hashSet3;
        String id;
        int i6;
        int i7;
        Set<String> criticalExtensionOIDs;
        String str4 = "CertPathReviewer.policyExtError";
        Set<String> initialPolicies = this.pkixParams.getInitialPolicies();
        int i8 = this.n + 1;
        ArrayList[] arrayListArr = new ArrayList[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            arrayListArr[i9] = new ArrayList();
        }
        HashSet hashSet4 = new HashSet();
        hashSet4.add(RFC3280CertPathUtilities.ANY_POLICY);
        PKIXPolicyNode pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet4, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false);
        arrayListArr[0].add(pKIXPolicyNode);
        if (this.pkixParams.isExplicitPolicyRequired()) {
            i2 = 0;
            i = 1;
        } else {
            i = 1;
            i2 = this.n + 1;
        }
        int i10 = this.pkixParams.isAnyPolicyInhibited() ? 0 : this.n + i;
        int i11 = this.pkixParams.isPolicyMappingInhibited() ? 0 : this.n + i;
        try {
            int size = this.certs.size() - i;
            PKIXPolicyNode pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode;
            X509Certificate x509Certificate = null;
            HashSet hashSet5 = null;
            while (size >= 0) {
                int i12 = this.n - size;
                X509Certificate x509Certificate2 = (X509Certificate) this.certs.get(size);
                int i13 = i8;
                try {
                    ASN1Sequence aSN1Sequence = (ASN1Sequence) getExtensionValue(x509Certificate2, CERTIFICATE_POLICIES);
                    if (aSN1Sequence == null || pKIXPolicyNodePrepareNextCertB2 == null) {
                        set = initialPolicies;
                        str = str4;
                        i3 = i10;
                        i4 = i11;
                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNodePrepareNextCertB2;
                    } else {
                        Enumeration objects = aSN1Sequence.getObjects();
                        set = initialPolicies;
                        HashSet hashSet6 = new HashSet();
                        while (objects.hasMoreElements()) {
                            PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                            PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNodePrepareNextCertB2;
                            ASN1ObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                            String str5 = str4;
                            hashSet6.add(policyIdentifier.getId());
                            if (!RFC3280CertPathUtilities.ANY_POLICY.equals(policyIdentifier.getId())) {
                                try {
                                    Set qualifierSet = getQualifierSet(policyInformation.getPolicyQualifiers());
                                    if (!processCertD1i(i12, arrayListArr, policyIdentifier, qualifierSet)) {
                                        processCertD1ii(i12, arrayListArr, policyIdentifier, qualifierSet);
                                    }
                                } catch (CertPathValidatorException e) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e, this.certPath, size);
                                }
                            }
                            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode2;
                            str4 = str5;
                        }
                        str = str4;
                        PKIXPolicyNode pKIXPolicyNode3 = pKIXPolicyNodePrepareNextCertB2;
                        if (hashSet5 == null || hashSet5.contains(RFC3280CertPathUtilities.ANY_POLICY)) {
                            hashSet2 = hashSet6;
                        } else {
                            hashSet2 = new HashSet();
                            for (Object obj : hashSet5) {
                                if (hashSet6.contains(obj)) {
                                    hashSet2.add(obj);
                                }
                            }
                        }
                        if (i10 > 0 || (i12 < this.n && isSelfIssued(x509Certificate2))) {
                            Enumeration objects2 = aSN1Sequence.getObjects();
                            while (objects2.hasMoreElements()) {
                                PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                                if (RFC3280CertPathUtilities.ANY_POLICY.equals(policyInformation2.getPolicyIdentifier().getId())) {
                                    try {
                                        Set qualifierSet2 = getQualifierSet(policyInformation2.getPolicyQualifiers());
                                        ArrayList arrayList = arrayListArr[i12 - 1];
                                        hashSet3 = hashSet2;
                                        for (int i14 = 0; i14 < arrayList.size(); i14++) {
                                            PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) arrayList.get(i14);
                                            for (Object obj2 : pKIXPolicyNode4.getExpectedPolicies()) {
                                                ArrayList arrayList2 = arrayList;
                                                int i15 = i10;
                                                if (obj2 instanceof String) {
                                                    id = (String) obj2;
                                                } else if (obj2 instanceof ASN1ObjectIdentifier) {
                                                    id = ((ASN1ObjectIdentifier) obj2).getId();
                                                } else {
                                                    arrayList = arrayList2;
                                                    i10 = i15;
                                                }
                                                Iterator children = pKIXPolicyNode4.getChildren();
                                                boolean z = false;
                                                while (children.hasNext()) {
                                                    Iterator it = children;
                                                    if (id.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                                        z = true;
                                                    }
                                                    children = it;
                                                }
                                                if (z) {
                                                    i6 = i11;
                                                } else {
                                                    HashSet hashSet7 = new HashSet();
                                                    hashSet7.add(id);
                                                    i6 = i11;
                                                    PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), i12, hashSet7, pKIXPolicyNode4, qualifierSet2, id, false);
                                                    pKIXPolicyNode4.addChild(pKIXPolicyNode5);
                                                    arrayListArr[i12].add(pKIXPolicyNode5);
                                                }
                                                arrayList = arrayList2;
                                                i10 = i15;
                                                i11 = i6;
                                            }
                                        }
                                        i3 = i10;
                                        i4 = i11;
                                        pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                                        for (i7 = i12 - 1; i7 >= 0; i7--) {
                                            ArrayList arrayList3 = arrayListArr[i7];
                                            for (int i16 = 0; i16 < arrayList3.size(); i16++) {
                                                PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) arrayList3.get(i16);
                                                if (!pKIXPolicyNode6.hasChildren()) {
                                                    PKIXPolicyNode pKIXPolicyNodeRemovePolicyNode2 = removePolicyNode(pKIXPolicyNodePrepareNextCertB2, arrayListArr, pKIXPolicyNode6);
                                                    pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNodeRemovePolicyNode2;
                                                    if (pKIXPolicyNodeRemovePolicyNode2 == null) {
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                        if (criticalExtensionOIDs != null) {
                                            boolean zContains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
                                            ArrayList arrayList4 = arrayListArr[i12];
                                            for (int i17 = 0; i17 < arrayList4.size(); i17++) {
                                                ((PKIXPolicyNode) arrayList4.get(i17)).setCritical(zContains);
                                            }
                                        }
                                        hashSet5 = hashSet3;
                                    } catch (CertPathValidatorException e2) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e2, this.certPath, size);
                                    }
                                }
                            }
                            i3 = i10;
                            i4 = i11;
                            hashSet3 = hashSet2;
                            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                            while (i7 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        } else {
                            i3 = i10;
                            i4 = i11;
                            hashSet3 = hashSet2;
                            pKIXPolicyNodePrepareNextCertB2 = pKIXPolicyNode3;
                            while (i7 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        }
                    }
                    if (aSN1Sequence == null) {
                        pKIXPolicyNodePrepareNextCertB2 = null;
                    }
                    if (i2 <= 0 && pKIXPolicyNodePrepareNextCertB2 == null) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidPolicyTree"));
                    }
                    if (i12 != this.n) {
                        try {
                            ASN1Primitive extensionValue = getExtensionValue(x509Certificate2, POLICY_MAPPINGS);
                            if (extensionValue != null) {
                                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) extensionValue;
                                int i18 = 0;
                                while (i18 < aSN1Sequence2.size()) {
                                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence2.getObjectAt(i18);
                                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence3.getObjectAt(0);
                                    ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) aSN1Sequence3.getObjectAt(1);
                                    boolean zEquals = RFC3280CertPathUtilities.ANY_POLICY.equals(aSN1ObjectIdentifier.getId());
                                    ASN1Sequence aSN1Sequence4 = aSN1Sequence2;
                                    if (zEquals) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                    }
                                    if (RFC3280CertPathUtilities.ANY_POLICY.equals(aSN1ObjectIdentifier2.getId())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicyMapping"), this.certPath, size);
                                    }
                                    i18++;
                                    aSN1Sequence2 = aSN1Sequence4;
                                }
                            }
                            if (extensionValue != null) {
                                ASN1Sequence aSN1Sequence5 = (ASN1Sequence) extensionValue;
                                HashMap map = new HashMap();
                                HashSet<String> hashSet8 = new HashSet();
                                int i19 = 0;
                                while (i19 < aSN1Sequence5.size()) {
                                    ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(i19);
                                    ASN1Sequence aSN1Sequence7 = aSN1Sequence5;
                                    String id2 = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(0)).getId();
                                    HashSet hashSet9 = hashSet5;
                                    String id3 = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(1)).getId();
                                    if (!map.containsKey(id2)) {
                                        HashSet hashSet10 = new HashSet();
                                        hashSet10.add(id3);
                                        map.put(id2, hashSet10);
                                        hashSet8.add(id2);
                                    } else {
                                        ((Set) map.get(id2)).add(id3);
                                    }
                                    i19++;
                                    aSN1Sequence5 = aSN1Sequence7;
                                    hashSet5 = hashSet9;
                                }
                                hashSet = hashSet5;
                                for (String str6 : hashSet8) {
                                    if (i4 > 0) {
                                        try {
                                            try {
                                                prepareNextCertB1(i12, arrayListArr, str6, map, x509Certificate2);
                                                str3 = str;
                                            } catch (CertPathValidatorException e3) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyQualifierError"), e3, this.certPath, size);
                                            }
                                        } catch (AnnotatedException e4) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, str), e4, this.certPath, size);
                                        }
                                    } else {
                                        str3 = str;
                                        if (i4 <= 0) {
                                            pKIXPolicyNodePrepareNextCertB2 = prepareNextCertB2(i12, arrayListArr, str6, pKIXPolicyNodePrepareNextCertB2);
                                        }
                                    }
                                    str = str3;
                                }
                            } else {
                                hashSet = hashSet5;
                            }
                            str2 = str;
                            if (isSelfIssued(x509Certificate2)) {
                                i5 = i3;
                                i11 = i4;
                            } else {
                                if (i2 != 0) {
                                    i2--;
                                }
                                i11 = i4 != 0 ? i4 - 1 : i4;
                                i5 = i3 != 0 ? i3 - 1 : i3;
                            }
                            try {
                                ASN1Sequence aSN1Sequence8 = (ASN1Sequence) getExtensionValue(x509Certificate2, POLICY_CONSTRAINTS);
                                if (aSN1Sequence8 != null) {
                                    Enumeration objects3 = aSN1Sequence8.getObjects();
                                    while (objects3.hasMoreElements()) {
                                        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects3.nextElement();
                                        int tagNo = aSN1TaggedObject.getTagNo();
                                        if (tagNo == 0) {
                                            int iIntValue3 = ASN1Integer.getInstance(aSN1TaggedObject, false).getValue().intValue();
                                            if (iIntValue3 < i2) {
                                                i2 = iIntValue3;
                                            }
                                        } else if (tagNo == 1 && (iIntValue2 = ASN1Integer.getInstance(aSN1TaggedObject, false).getValue().intValue()) < i11) {
                                            i11 = iIntValue2;
                                        }
                                    }
                                }
                                try {
                                    ASN1Integer aSN1Integer = (ASN1Integer) getExtensionValue(x509Certificate2, INHIBIT_ANY_POLICY);
                                    if (aSN1Integer != null && (iIntValue = aSN1Integer.getValue().intValue()) < i5) {
                                        i5 = iIntValue;
                                    }
                                } catch (AnnotatedException unused) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyInhibitExtError"), this.certPath, size);
                                }
                            } catch (AnnotatedException unused2) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyConstExtError"), this.certPath, size);
                            }
                        } catch (AnnotatedException e5) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyMapExtError"), e5, this.certPath, size);
                        }
                    } else {
                        hashSet = hashSet5;
                        str2 = str;
                        i5 = i3;
                        i11 = i4;
                    }
                    size--;
                    x509Certificate = x509Certificate2;
                    str4 = str2;
                    hashSet5 = hashSet;
                    i8 = i13;
                    i10 = i5;
                    initialPolicies = set;
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, str4), e6, this.certPath, size);
                }
            }
            Set<String> set2 = initialPolicies;
            int i20 = i8;
            PKIXPolicyNode pKIXPolicyNode7 = pKIXPolicyNodePrepareNextCertB2;
            if (!isSelfIssued(x509Certificate) && i2 > 0) {
                i2--;
            }
            try {
                ASN1Sequence aSN1Sequence9 = (ASN1Sequence) getExtensionValue(x509Certificate, POLICY_CONSTRAINTS);
                if (aSN1Sequence9 != null) {
                    Enumeration objects4 = aSN1Sequence9.getObjects();
                    int i21 = i2;
                    while (objects4.hasMoreElements()) {
                        ASN1TaggedObject aSN1TaggedObject2 = (ASN1TaggedObject) objects4.nextElement();
                        if (aSN1TaggedObject2.getTagNo() == 0 && ASN1Integer.getInstance(aSN1TaggedObject2, false).getValue().intValue() == 0) {
                            i21 = 0;
                        }
                    }
                    i2 = i21;
                }
                if (pKIXPolicyNode7 == null) {
                    if (this.pkixParams.isExplicitPolicyRequired()) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.explicitPolicy"), this.certPath, size);
                    }
                    pKIXPolicyNodeRemovePolicyNode = null;
                } else if (isAnyPolicy(set2)) {
                    if (!this.pkixParams.isExplicitPolicyRequired()) {
                        pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode7;
                    } else {
                        if (hashSet5.isEmpty()) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.explicitPolicy"), this.certPath, size);
                        }
                        HashSet hashSet11 = new HashSet();
                        int i22 = 0;
                        while (true) {
                            int i23 = i20;
                            if (i22 >= i23) {
                                break;
                            }
                            ArrayList arrayList5 = arrayListArr[i22];
                            for (int i24 = 0; i24 < arrayList5.size(); i24++) {
                                PKIXPolicyNode pKIXPolicyNode8 = (PKIXPolicyNode) arrayList5.get(i24);
                                if (RFC3280CertPathUtilities.ANY_POLICY.equals(pKIXPolicyNode8.getValidPolicy())) {
                                    Iterator children2 = pKIXPolicyNode8.getChildren();
                                    while (children2.hasNext()) {
                                        hashSet11.add(children2.next());
                                    }
                                }
                            }
                            i22++;
                            i20 = i23;
                        }
                        Iterator it2 = hashSet11.iterator();
                        while (it2.hasNext()) {
                            hashSet5.contains(((PKIXPolicyNode) it2.next()).getValidPolicy());
                        }
                        if (pKIXPolicyNode7 != null) {
                            pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode7;
                            for (int i25 = this.n - 1; i25 >= 0; i25--) {
                                ArrayList arrayList6 = arrayListArr[i25];
                                for (int i26 = 0; i26 < arrayList6.size(); i26++) {
                                    PKIXPolicyNode pKIXPolicyNode9 = (PKIXPolicyNode) arrayList6.get(i26);
                                    if (!pKIXPolicyNode9.hasChildren()) {
                                        pKIXPolicyNodeRemovePolicyNode = removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode9);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    HashSet<PKIXPolicyNode> hashSet12 = new HashSet();
                    for (int i27 = 0; i27 < i20; i27++) {
                        ArrayList arrayList7 = arrayListArr[i27];
                        for (int i28 = 0; i28 < arrayList7.size(); i28++) {
                            PKIXPolicyNode pKIXPolicyNode10 = (PKIXPolicyNode) arrayList7.get(i28);
                            if (RFC3280CertPathUtilities.ANY_POLICY.equals(pKIXPolicyNode10.getValidPolicy())) {
                                Iterator children3 = pKIXPolicyNode10.getChildren();
                                while (children3.hasNext()) {
                                    PKIXPolicyNode pKIXPolicyNode11 = (PKIXPolicyNode) children3.next();
                                    if (!RFC3280CertPathUtilities.ANY_POLICY.equals(pKIXPolicyNode11.getValidPolicy())) {
                                        hashSet12.add(pKIXPolicyNode11);
                                    }
                                }
                            }
                        }
                    }
                    pKIXPolicyNodeRemovePolicyNode = pKIXPolicyNode7;
                    for (PKIXPolicyNode pKIXPolicyNode12 : hashSet12) {
                        Set<String> set3 = set2;
                        if (!set3.contains(pKIXPolicyNode12.getValidPolicy())) {
                            pKIXPolicyNodeRemovePolicyNode = removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode12);
                        }
                        set2 = set3;
                    }
                    if (pKIXPolicyNodeRemovePolicyNode != null) {
                        for (int i29 = this.n - 1; i29 >= 0; i29--) {
                            ArrayList arrayList8 = arrayListArr[i29];
                            for (int i30 = 0; i30 < arrayList8.size(); i30++) {
                                PKIXPolicyNode pKIXPolicyNode13 = (PKIXPolicyNode) arrayList8.get(i30);
                                if (!pKIXPolicyNode13.hasChildren()) {
                                    pKIXPolicyNodeRemovePolicyNode = removePolicyNode(pKIXPolicyNodeRemovePolicyNode, arrayListArr, pKIXPolicyNode13);
                                }
                            }
                        }
                    }
                }
                if (i2 <= 0 && pKIXPolicyNodeRemovePolicyNode == null) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.invalidPolicy"));
                }
            } catch (AnnotatedException unused3) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.policyConstExtError"), this.certPath, size);
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkCriticalExtensions() {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e);
                }
            } catch (CertPathReviewerException e2) {
                addError(e2.getErrorMessage(), e2.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(KEY_USAGE);
                criticalExtensionOIDs.remove(CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(NAME_CONSTRAINTS);
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e3) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e3.getMessage(), e3, e3.getClass().getName()}), e3.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it3.next())}), size);
                    }
                }
            }
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        ErrorBundle errorBundle;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i2));
                if (QCStatement.id_etsi_qcs_QcCompliance.equals(qCStatement.getStatementId())) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcEuCompliance"), i);
                } else if (!QCStatement.id_qcs_pkixQCSyntax_v1.equals(qCStatement.getStatementId())) {
                    if (QCStatement.id_etsi_qcs_QcSSCD.equals(qCStatement.getStatementId())) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcSSCD"), i);
                    } else if (QCStatement.id_etsi_qcs_LimiteValue.equals(qCStatement.getStatementId())) {
                        MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                        monetaryValue.getCurrency();
                        double dDoubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                        if (monetaryValue.getCurrency().isAlphabetic()) {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueAlpha", new Object[]{monetaryValue.getCurrency().getAlphabetic(), new TrustedInput(new Double(dDoubleValue)), monetaryValue});
                        } else {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(dDoubleValue)), monetaryValue});
                        }
                        addNotification(errorBundle, i);
                    } else {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i);
                        z = true;
                    }
                }
            }
            return true ^ z;
        } catch (AnnotatedException unused) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    protected void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x02bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void checkCRLs(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i) throws CertPathReviewerException {
        Iterator it;
        X509CRL x509crl;
        boolean z;
        boolean z2;
        boolean z3;
        boolean[] keyUsage;
        X509CRL x509crl2;
        Iterator it2;
        String str;
        X509CRL crl;
        boolean z4;
        Iterator it3;
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        try {
            x509CRLStoreSelector.addIssuerName(getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            x509CRLStoreSelector.setCertificateChecking(x509Certificate);
            try {
                Set setFindCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, pKIXParameters);
                Iterator it4 = setFindCRLs.iterator();
                if (setFindCRLs.isEmpty()) {
                    Iterator it5 = CRL_UTIL.findCRLs(new X509CRLStoreSelector(), pKIXParameters).iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it5.hasNext()) {
                        arrayList.add(((X509CRL) it5.next()).getIssuerX500Principal());
                    }
                    it3 = it4;
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlInCertstore", new Object[]{new UntrustedInput(x509CRLStoreSelector.getIssuerNames()), new UntrustedInput(arrayList), Integers.valueOf(arrayList.size())}), i);
                } else {
                    it3 = it4;
                }
                it = it3;
            } catch (AnnotatedException e) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError", new Object[]{e.getCause().getMessage(), e.getCause(), e.getCause().getClass().getName()}), i);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (it.hasNext()) {
                x509crl3 = (X509CRL) it.next();
                if (x509crl3.getNextUpdate() == null || pKIXParameters.getDate().before(x509crl3.getNextUpdate())) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localValidCRL", new Object[]{new TrustedInput(x509crl3.getThisUpdate()), new TrustedInput(x509crl3.getNextUpdate())}), i);
                    x509crl = x509crl3;
                    z = true;
                    break;
                }
                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localInvalidCRL", new Object[]{new TrustedInput(x509crl3.getThisUpdate()), new TrustedInput(x509crl3.getNextUpdate())}), i);
            }
            x509crl = x509crl3;
            z = false;
            if (!z) {
                Iterator it6 = vector.iterator();
                boolean z5 = z;
                while (true) {
                    if (!it6.hasNext()) {
                        z2 = z5;
                        break;
                    }
                    try {
                        str = (String) it6.next();
                        crl = getCRL(str);
                    } catch (CertPathReviewerException e2) {
                        e = e2;
                        x509crl2 = x509crl;
                        it2 = it6;
                    }
                    if (crl != null) {
                        if (!x509Certificate.getIssuerX500Principal().equals(crl.getIssuerX500Principal())) {
                            try {
                                x509crl2 = x509crl;
                                it2 = it6;
                            } catch (CertPathReviewerException e3) {
                                e = e3;
                                x509crl2 = x509crl;
                                it2 = it6;
                            }
                            try {
                                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineCRLWrongCA", new Object[]{new UntrustedInput(crl.getIssuerX500Principal().getName()), new UntrustedInput(x509Certificate.getIssuerX500Principal().getName()), new UntrustedUrlInput(str)}), i);
                            } catch (CertPathReviewerException e4) {
                                e = e4;
                                addNotification(e.getErrorMessage(), i);
                                it6 = it2;
                                x509crl = x509crl2;
                            }
                        } else {
                            x509crl2 = x509crl;
                            it2 = it6;
                            try {
                            } catch (CertPathReviewerException e5) {
                                e = e5;
                            }
                            if (crl.getNextUpdate() == null || this.pkixParams.getDate().before(crl.getNextUpdate())) {
                                try {
                                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineValidCRL", new Object[]{new TrustedInput(crl.getThisUpdate()), new TrustedInput(crl.getNextUpdate()), new UntrustedUrlInput(str)}), i);
                                    x509crl = crl;
                                    z2 = true;
                                    break;
                                } catch (CertPathReviewerException e6) {
                                    e = e6;
                                    z5 = true;
                                    addNotification(e.getErrorMessage(), i);
                                    it6 = it2;
                                    x509crl = x509crl2;
                                }
                            } else {
                                Object[] objArr = new Object[3];
                                z4 = z5;
                                try {
                                    objArr[0] = new TrustedInput(crl.getThisUpdate());
                                    objArr[1] = new TrustedInput(crl.getNextUpdate());
                                    objArr[2] = new UntrustedUrlInput(str);
                                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineInvalidCRL", objArr), i);
                                    it6 = it2;
                                    x509crl = x509crl2;
                                    z5 = z4;
                                } catch (CertPathReviewerException e7) {
                                    e = e7;
                                    z5 = z4;
                                    addNotification(e.getErrorMessage(), i);
                                    it6 = it2;
                                    x509crl = x509crl2;
                                }
                            }
                        }
                        addNotification(e.getErrorMessage(), i);
                        it6 = it2;
                        x509crl = x509crl2;
                    } else {
                        x509crl2 = x509crl;
                        it2 = it6;
                    }
                    z4 = z5;
                    it6 = it2;
                    x509crl = x509crl2;
                    z5 = z4;
                }
            } else {
                z2 = z;
            }
            if (x509crl != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length < 7 || !keyUsage[6])) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey != null) {
                    try {
                        x509crl.verify(publicKey, BouncyCastleProvider.PROVIDER_NAME);
                        X509CRLEntry revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber());
                        if (revokedCertificate != null) {
                            if (revokedCertificate.hasExtensions()) {
                                try {
                                    ASN1Enumerated aSN1Enumerated = ASN1Enumerated.getInstance(getExtensionValue(revokedCertificate, Extension.reasonCode.getId()));
                                    String str2 = aSN1Enumerated != null ? crlReasons[aSN1Enumerated.getValue().intValue()] : null;
                                    if (str2 == null) {
                                        str2 = crlReasons[7];
                                    }
                                    LocaleString localeString = new LocaleString(RESOURCE_NAME, str2);
                                    if (!date.before(revokedCertificate.getRevocationDate())) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certRevoked", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}));
                                    }
                                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.revokedAfterValidation", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}), i);
                                } catch (AnnotatedException e8) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlReasonExtError"), e8);
                                }
                            }
                        } else {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notRevoked"), i);
                        }
                        if (x509crl.getNextUpdate() != null && x509crl.getNextUpdate().before(this.pkixParams.getDate())) {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlUpdateAvailable", new Object[]{new TrustedInput(x509crl.getNextUpdate())}), i);
                        }
                        try {
                            ASN1Primitive extensionValue = getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
                            try {
                                ASN1Primitive extensionValue2 = getExtensionValue(x509crl, DELTA_CRL_INDICATOR);
                                if (extensionValue2 != null) {
                                    X509CRLStoreSelector x509CRLStoreSelector2 = new X509CRLStoreSelector();
                                    try {
                                        x509CRLStoreSelector2.addIssuerName(getIssuerPrincipal(x509crl).getEncoded());
                                        x509CRLStoreSelector2.setMinCRLNumber(((ASN1Integer) extensionValue2).getPositiveValue());
                                        try {
                                            x509CRLStoreSelector2.setMaxCRLNumber(((ASN1Integer) getExtensionValue(x509crl, CRL_NUMBER)).getPositiveValue().subtract(BigInteger.valueOf(1L)));
                                            try {
                                                Iterator it7 = CRL_UTIL.findCRLs(x509CRLStoreSelector2, pKIXParameters).iterator();
                                                while (it7.hasNext()) {
                                                    try {
                                                        ASN1Primitive extensionValue3 = getExtensionValue((X509CRL) it7.next(), ISSUING_DISTRIBUTION_POINT);
                                                        if (extensionValue == null) {
                                                            if (extensionValue3 == null) {
                                                                z3 = true;
                                                                break;
                                                            }
                                                        } else if (extensionValue.equals(extensionValue3)) {
                                                            z3 = true;
                                                            break;
                                                        }
                                                    } catch (AnnotatedException e9) {
                                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"), e9);
                                                    }
                                                }
                                                z3 = false;
                                                if (!z3) {
                                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBaseCRL"));
                                                }
                                            } catch (AnnotatedException e10) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError"), e10);
                                            }
                                        } catch (AnnotatedException e11) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNbrExtError"), e11);
                                        }
                                    } catch (IOException e12) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e12);
                                    }
                                }
                                if (extensionValue != null) {
                                    IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(extensionValue);
                                    try {
                                        BasicConstraints basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
                                        if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyUserCert"));
                                        }
                                        if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyCaCert"));
                                        }
                                        if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyAttrCert"));
                                        }
                                    } catch (AnnotatedException e13) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlBCExtError"), e13);
                                    }
                                }
                            } catch (AnnotatedException unused) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.deltaCrlExtError"));
                            }
                        } catch (AnnotatedException unused2) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"));
                        }
                    } catch (Exception e14) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlVerifyFailed"), e14);
                    }
                } else {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNoIssuerPublicKey"));
                }
            }
            if (!z2) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e15) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e15);
        }
    }

    protected Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i = 0; i < names.length; i++) {
                        if (names[i].getTagNo() == 6) {
                            vector.add(((DERIA5String) names[i].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    protected Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i = 0; i < accessDescriptions.length; i++) {
                if (accessDescriptions[i].getAccessMethod().equals(AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((DERIA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    protected Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Primitive.fromByteArray(((ASN1OctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()));
                x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                byte[] keyIdentifier = authorityKeyIdentifier.getKeyIdentifier();
                if (keyIdentifier != null) {
                    x509CertSelector.setSubjectKeyIdentifier(new DEROctetString(keyIdentifier).getEncoded());
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }
}
