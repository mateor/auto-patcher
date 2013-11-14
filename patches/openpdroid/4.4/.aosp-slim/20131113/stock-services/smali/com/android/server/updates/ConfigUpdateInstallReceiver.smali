.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# static fields
.field private static final EXTRA_CONTENT_PATH:Ljava/lang/String; = "CONTENT_PATH"

.field private static final EXTRA_REQUIRED_HASH:Ljava/lang/String; = "REQUIRED_HASH"

.field private static final EXTRA_SIGNATURE:Ljava/lang/String; = "SIGNATURE"

.field private static final EXTRA_VERSION_NUMBER:Ljava/lang/String; = "VERSION"

.field private static final TAG:Ljava/lang/String; = "ConfigUpdateInstallReceiver"

.field private static final UPDATE_CERTIFICATE_KEY:Ljava/lang/String; = "config_update_certificate"


# instance fields
.field protected final updateContent:Ljava/io/File;

.field protected final updateDir:Ljava/io/File;

.field protected final updateVersion:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/ContentResolver;)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCert(Landroid/content/ContentResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)[B
    .registers 3
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Intent;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;[BILjava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # [B
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifySignature([BILjava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .registers 3
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getSignatureFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I
    .registers 2
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B
    .registers 2
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700([B)Ljava/lang/String;
    .registers 2
    .param p0    # [B

    invoke-static {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z
    .registers 4
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getAltContent(Landroid/content/Intent;)[B
    .registers 3
    .param p1    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getContentFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getCert(Landroid/content/ContentResolver;)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p1    # Landroid/content/ContentResolver;

    const-string v5, "config_update_certificate"

    invoke-static {p1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_20
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_20} :catch_21

    return-object v5

    :catch_21
    move-exception v3

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Got malformed certificate from settings, ignoring"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getContentFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1    # Landroid/content/Intent;

    const-string v1, "CONTENT_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required content path, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    return-object v0
.end method

.method private getCurrentContent()[B
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    :goto_a
    return-object v1

    :catch_b
    move-exception v0

    const-string v1, "ConfigUpdateInstallReceiver"

    const-string v2, "Failed to read current content, assuming first update!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static getCurrentHash([B)Ljava/lang/String;
    .registers 5
    .param p0    # [B

    if-nez p0, :cond_5

    const-string v3, "0"

    :goto_4
    return-object v3

    :cond_5
    :try_start_5
    const-string v3, "SHA512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v3

    goto :goto_4

    :catch_15
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getCurrentVersion()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v2

    :goto_12
    return v2

    :catch_13
    move-exception v0

    const-string v2, "ConfigUpdateInstallReceiver"

    const-string v3, "Couldn\'t find current metadata, assuming first update"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_12
.end method

.method private getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1    # Landroid/content/Intent;

    const-string v1, "REQUIRED_HASH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required previous hash, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSignatureFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1    # Landroid/content/Intent;

    const-string v1, "SIGNATURE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required signature, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVersionFromIntent(Landroid/content/Intent;)I
    .registers 5
    .param p1    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required version number, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v0, "NONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method private verifySignature([BILjava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1    # [B
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "SHA512withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method

.method private verifyVersion(II)Z
    .registers 4
    .param p1    # I
    .param p2    # I

    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected install([BI)V
    .registers 7
    .param p1    # [B
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    new-instance v0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->start()V

    return-void
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    return-void
.end method

.method protected writeUpdate(Ljava/io/File;Ljava/io/File;[B)V
    .registers 11
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;
    .param p3    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v4

    :goto_2d
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_32
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    :cond_36
    :try_start_36
    const-string v4, "journal"

    const-string v5, ""

    invoke-static {v4, v5, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_2c

    :try_start_48
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_78

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to atomically rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_75
    .catchall {:try_start_48 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v4

    move-object v0, v1

    goto :goto_2d

    :cond_78
    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method
