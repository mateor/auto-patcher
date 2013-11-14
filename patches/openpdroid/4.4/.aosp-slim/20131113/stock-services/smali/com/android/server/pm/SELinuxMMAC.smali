.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# static fields
.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final sPackageSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSigSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPackageSeinfo:Ljava/util/HashMap;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p0    # Landroid/content/pm/PackageParser$Package;

    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4b

    :cond_10
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v2, :cond_32

    aget-object v3, v0, v1

    if-nez v3, :cond_1d

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1d
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :goto_31
    return-void

    :cond_32
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->sPackageSeinfo:Ljava/util/HashMap;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->sPackageSeinfo:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_31

    :cond_4b
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_31
.end method

.method private static flushInstallPolicy()V
    .registers 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPackageSeinfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static readInstallPolicy()Z
    .registers 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .registers 4
    .param p0    # Ljava/io/File;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readInstallPolicy([Ljava/io/File;)Z
    .registers 15
    .param p0    # [Ljava/io/File;

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_3
    if-nez v5, :cond_13

    if-eqz p0, :cond_13

    aget-object v11, p0, v2

    if-eqz v11, :cond_13

    :try_start_b
    new-instance v6, Ljava/io/FileReader;

    aget-object v11, p0, v2

    invoke-direct {v6, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_1e

    move-object v5, v6

    :cond_13
    if-nez v5, :cond_40

    const-string v10, "SELinuxMMAC"

    const-string v11, "No policy file found. All seinfo values will be null."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_1d
    return v10

    :catch_1e
    move-exception v1

    const-string v11, "SELinuxMMAC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find install policy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p0, v2

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_40
    const-string v11, "SELinuxMMAC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Using install policy file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p0, v2

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    :try_start_61
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v11, "policy"

    invoke-static {v3, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_73} :catch_b1
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_73} :catch_cb

    move-result v11

    if-ne v11, v10, :cond_7c

    :goto_76
    :try_start_76
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_1d

    :catch_7a
    move-exception v11

    goto :goto_1d

    :cond_7c
    :try_start_7c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "signer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f6

    const/4 v11, 0x0

    const-string v12, "signature"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ba

    const-string v11, "SELinuxMMAC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<signer> without signature at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_b0} :catch_b1
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_b0} :catch_cb

    goto :goto_6d

    :catch_b1
    move-exception v1

    const-string v11, "SELinuxMMAC"

    const-string v12, "Got execption parsing "

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    :cond_ba
    :try_start_ba
    new-instance v8, Landroid/content/pm/Signature;

    invoke-direct {v8, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_bf} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_bf} :catch_b1
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bf} :catch_cb

    :try_start_bf
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6d

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_ca} :catch_b1
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_ca} :catch_cb

    goto :goto_6d

    :catch_cb
    move-exception v1

    const-string v11, "SELinuxMMAC"

    const-string v12, "Got execption parsing "

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    :catch_d4
    move-exception v1

    :try_start_d5
    const-string v11, "SELinuxMMAC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<signer> with bad signature at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6d

    :cond_f6
    const-string v11, "default"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10c

    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6d

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    :cond_10c
    const-string v11, "package"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14b

    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13e

    const-string v11, "SELinuxMMAC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<package> without name at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6d

    :cond_13e
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6d

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->sPackageSeinfo:Ljava/util/HashMap;

    invoke-virtual {v11, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    :cond_14b
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_14e} :catch_b1
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_14e} :catch_cb

    goto/16 :goto_6d
.end method

.method private static readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 10
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v8, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_55

    if-ne v4, v8, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_55

    :cond_15
    if-eq v4, v8, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "seinfo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    move-object v1, v2

    :cond_34
    :goto_34
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_38
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<seinfo> without valid value at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_55
    return-object v1
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .registers 6
    .param p0    # Ljava/lang/String;

    const/4 v3, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_28

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x61

    if-lt v1, v4, :cond_19

    const/16 v4, 0x7a

    if-le v1, v4, :cond_25

    :cond_19
    const/16 v4, 0x41

    if-lt v1, v4, :cond_21

    const/16 v4, 0x5a

    if-le v1, v4, :cond_25

    :cond_21
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_3

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_28
    const/4 v3, 0x1

    goto :goto_3
.end method
