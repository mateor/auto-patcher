.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$Rule;
    }
.end annotation


# static fields
.field private static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field private static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field private static final RULES_DIR:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "IntentFirewall"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TAG_RULES:Ljava/lang/String; = "rules"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TYPE_ACTIVITY:I = 0x0

.field private static final TYPE_BROADCAST:I = 0x1

.field private static final TYPE_SERVICE:I = 0x2

.field private static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field private final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field private mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field final mHandler:Landroid/os/Handler;

.field private final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field private mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "ifw"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    const/16 v3, 0x11

    new-array v0, v3, [Lcom/android/server/firewall/FilterFactory;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    aput-object v4, v0, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    aput-object v4, v0, v3

    new-instance v3, Ljava/util/HashMap;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    :goto_7c
    array-length v3, v0

    if-ge v2, v3, :cond_8d

    aget-object v1, v0, v2

    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_8d
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;)V
    .registers 5
    .param p1    # Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$1;

    invoke-direct {v1, p0}, Lcom/android/server/firewall/IntentFirewall$1;-><init>(Lcom/android/server/firewall/IntentFirewall;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    new-instance v1, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    invoke-virtual {v1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->startWatching()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 2
    .param p0    # Lcom/android/server/firewall/IntentFirewall;
    .param p1    # Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    return-object v0
.end method

.method private static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0    # [Ljava/lang/String;

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_37

    aget-object v2, p0, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x96

    if-ge v4, v5, :cond_2a

    if-nez v0, :cond_28

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    const/4 v0, 0x0

    goto :goto_22

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x7d

    if-lt v4, v5, :cond_25

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_36
    return-object v4

    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_63

    array-length v4, p0

    if-lez v4, :cond_63

    const/4 v4, 0x0

    aget-object v2, p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, -0x96

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_36

    :cond_63
    const/4 v4, 0x0

    goto :goto_36
.end method

.method private static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .registers 17
    .param p0    # I
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v1, 0x0

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    if-eqz v12, :cond_1e

    :try_start_13
    invoke-interface {v12, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    array-length v3, v9

    invoke-static {v9}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_32

    move-result-object v4

    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    move v0, p0

    move v2, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v8}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catch_32
    move-exception v11

    const-string v0, "IntentFirewall"

    const-string v2, "Remote exception while retrieving packages"

    invoke-static {v0, v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 6
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    if-nez v1, :cond_27

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element in filter list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v2

    return-object v2
.end method

.method private readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .registers 20
    .param p1    # Ljava/io/File;
    .param p2    # [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    new-instance v11, Ljava/util/ArrayList;

    const/4 v13, 0x3

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_7
    const/4 v13, 0x3

    if-ge v3, v13, :cond_15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1c} :catch_76

    :try_start_1c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v13, 0x0

    invoke-interface {v5, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v13, "rules"

    invoke-static {v5, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_2d
    :goto_2d
    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_e8

    const/4 v9, -0x1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "activity"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_78

    const/4 v9, 0x0

    :cond_41
    :goto_41
    const/4 v13, -0x1

    if-eq v9, v13, :cond_2d

    new-instance v7, Lcom/android/server/firewall/IntentFirewall$Rule;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_50} :catch_57
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_50} :catch_a8
    .catchall {:try_start_1c .. :try_end_50} :catchall_e3

    :try_start_50
    invoke-virtual {v7, v5}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_53} :catch_8c
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_a8
    .catchall {:try_start_50 .. :try_end_53} :catchall_e3

    :try_start_53
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_a8
    .catchall {:try_start_53 .. :try_end_56} :catchall_e3

    goto :goto_2d

    :catch_57
    move-exception v1

    :try_start_58
    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading intent firewall rules from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_e3

    :try_start_72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_14b

    :cond_75
    :goto_75
    return-void

    :catch_76
    move-exception v1

    goto :goto_75

    :cond_78
    :try_start_78
    const-string v13, "broadcast"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_82

    const/4 v9, 0x1

    goto :goto_41

    :cond_82
    const-string v13, "service"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    const/4 v9, 0x2

    goto :goto_41

    :catch_8c
    move-exception v1

    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading an intent firewall rule from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_a7} :catch_57
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_a7} :catch_a8
    .catchall {:try_start_78 .. :try_end_a7} :catchall_e3

    goto :goto_2d

    :catch_a8
    move-exception v1

    :try_start_a9
    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading intent firewall rules from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_a9 .. :try_end_c3} :catchall_e3

    :try_start_c3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_75

    :catch_c7
    move-exception v1

    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_df
    invoke-static {v13, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    :catchall_e3
    move-exception v13

    :try_start_e4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_12f

    :goto_e7
    throw v13

    :cond_e8
    :try_start_e8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_165

    :goto_eb
    const/4 v9, 0x0

    :goto_ec
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_75

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    aget-object v6, p2, v9

    const/4 v8, 0x0

    :goto_fb
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_12c

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/firewall/IntentFirewall$Rule;

    const/4 v3, 0x0

    :goto_108
    invoke-virtual {v7}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    move-result v13

    if-ge v3, v13, :cond_118

    invoke-virtual {v7, v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_108

    :cond_118
    const/4 v3, 0x0

    :goto_119
    invoke-virtual {v7}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    move-result v13

    if-ge v3, v13, :cond_129

    invoke-virtual {v7, v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v6, v13, v7}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    :cond_129
    add-int/lit8 v8, v8, 0x1

    goto :goto_fb

    :cond_12c
    add-int/lit8 v9, v9, 0x1

    goto :goto_ec

    :catch_12f
    move-exception v1

    const-string v14, "IntentFirewall"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error while closing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e7

    :catch_14b
    move-exception v1

    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_df

    :catch_165
    move-exception v1

    const-string v13, "IntentFirewall"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_eb
.end method

.method private readRulesDir(Ljava/io/File;)V
    .registers 12
    .param p1    # Ljava/io/File;

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x3

    new-array v3, v4, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v2, 0x0

    :goto_7
    array-length v4, v3

    if-ge v2, v4, :cond_15

    new-instance v4, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$1;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1a
    array-length v4, v1

    if-ge v2, v4, :cond_31

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-direct {p0, v0, v3}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_31
    const-string v4, "IntentFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read new rules (A:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " B:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " S:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v9

    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    invoke-interface {v4}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_89
    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    monitor-exit v5

    return-void

    :catchall_99
    move-exception v4

    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_89 .. :try_end_9b} :catchall_99

    throw v4
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 15
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I

    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Z

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .registers 25
    .param p1    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # I
    .param p4    # Landroid/content/Intent;
    .param p5    # I
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # I

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    const/4 v14, 0x0

    :goto_1d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_4b

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/firewall/IntentFirewall$Rule;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/firewall/IntentFirewall$Rule;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    move-result v5

    or-int/2addr v12, v5

    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    move-result v5

    or-int/2addr v15, v5

    if-eqz v12, :cond_5c

    if-eqz v15, :cond_5c

    :cond_4b
    if-eqz v15, :cond_58

    move/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    :cond_58
    if-nez v12, :cond_5f

    const/4 v5, 0x1

    :goto_5b
    return v5

    :cond_5c
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    :cond_5f
    const/4 v5, 0x0

    goto :goto_5b
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 16
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/content/Intent;
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v3, 0x2

    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method signaturesMatch(II)Z
    .registers 8
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_d

    move-result v3

    if-nez v3, :cond_c

    const/4 v2, 0x1

    :cond_c
    :goto_c
    return v2

    :catch_d
    move-exception v0

    const-string v3, "IntentFirewall"

    const-string v4, "Remote exception while checking signatures"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
