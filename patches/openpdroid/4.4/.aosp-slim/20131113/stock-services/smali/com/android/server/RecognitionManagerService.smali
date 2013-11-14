.class public Lcom/android/server/RecognitionManagerService;
.super Landroid/os/Binder;
.source "RecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecognitionManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "RecognitionManagerService"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mMonitor:Lcom/android/server/RecognitionManagerService$MyPackageMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Lcom/android/server/RecognitionManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/RecognitionManagerService$1;-><init>(Lcom/android/server/RecognitionManagerService;)V

    iput-object v0, p0, Lcom/android/server/RecognitionManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;-><init>(Lcom/android/server/RecognitionManagerService;)V

    iput-object v0, p0, Lcom/android/server/RecognitionManagerService;->mMonitor:Lcom/android/server/RecognitionManagerService$MyPackageMonitor;

    iget-object v0, p0, Lcom/android/server/RecognitionManagerService;->mMonitor:Lcom/android/server/RecognitionManagerService$MyPackageMonitor;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RecognitionManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RecognitionManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RecognitionManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/RecognitionManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/RecognitionManagerService;->initForUser(I)V

    return-void
.end method

.method private initForUser(I)V
    .registers 6
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/RecognitionManagerService;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :try_start_7
    iget-object v2, p0, Lcom/android/server/RecognitionManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_1b

    move-result-object v1

    :cond_e
    :goto_e
    if-nez v1, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0, p1}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;I)V

    :cond_1a
    return-void

    :catch_1b
    move-exception v2

    goto :goto_e
.end method


# virtual methods
.method findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.RecognitionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_32

    const-string v4, "RecognitionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no available voice recognition services found for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_31
    return-object v4

    :cond_32
    if-eqz p1, :cond_54

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v2, :cond_54

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_54
    const/4 v4, 0x1

    if-le v2, v4, :cond_5e

    const-string v4, "RecognitionManagerService"

    const-string v5, "more than one voice recognition service found, picking first"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method getCurRecognizer(I)Landroid/content/ComponentName;
    .registers 5
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    :goto_13
    return-object v1

    :cond_14
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_13
.end method

.method setCurRecognizer(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_12
    const-string v0, ""

    goto :goto_e
.end method

.method public systemReady()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/RecognitionManagerService;->initForUser(I)V

    return-void
.end method
