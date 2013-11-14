.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$DeviceOwner;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final DBG:Z = false

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400c0

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_3d

    :goto_3c
    return-void

    :cond_3d
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_3c
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0    # Lcom/android/server/DevicePolicyManagerService;
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0    # Lcom/android/server/DevicePolicyManagerService;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/DevicePolicyManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0    # Lcom/android/server/DevicePolicyManagerService;
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/DevicePolicyManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # I

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private enforceCrossUserPermission(I)V
    .registers 6
    .param p1    # I

    if-gez p1, :cond_1b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private getEncryptionStatus()I
    .registers 4

    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    :goto_11
    return v1

    :cond_12
    const-string v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_10

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_c
    :goto_c
    return-wide v6

    :cond_d
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_39

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    cmp-long v8, v4, v6

    if-eqz v8, :cond_34

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_36

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_36

    :cond_34
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_39
    move-wide v6, v4

    goto :goto_c
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_10

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .registers 9
    .param p1    # I

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_11
    if-ltz v1, :cond_3e

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    :try_start_1b
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_35

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_3b

    :cond_35
    const/4 v4, 0x1

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3b} :catch_4c

    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_3e
    if-eqz v4, :cond_4b

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_4b
    return-void

    :catch_4c
    move-exception v5

    goto :goto_3b
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 13
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    const-wide/16 v9, 0x0

    monitor-enter p0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_11

    monitor-exit p0

    :goto_10
    return-void

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_43

    iget-object v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_40

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_40

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v7, 0x19bfcc00

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_40

    const-string v5, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v5}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_43
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    goto :goto_10

    :catchall_4a
    move-exception v5

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v5
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isEncryptionSupported()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isExtStorageEncrypted()Z
    .registers 3

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V
    .registers 21
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .param p2    # I

    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    :try_start_9
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_e} :catch_320
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_e} :catch_31d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_e} :catch_31a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_317
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_315
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_e} :catch_313

    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v15, 0x0

    invoke-interface {v9, v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_16
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_20

    const/4 v15, 0x2

    if-ne v13, v15, :cond_16

    :cond_20
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v15, "policies"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f1

    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Settings do not start with policies tag: found "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_47} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_47} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_47} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_47} :catch_201
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_47} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_47} :catch_2e3

    :catch_47
    move-exception v4

    move-object v10, v11

    :goto_49
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    if-eqz v10, :cond_74

    :try_start_71
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_310

    :cond_74
    :goto_74
    new-instance v14, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_e7

    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Active password quality 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " does not match actual quality 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    :cond_e7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void

    :cond_f1
    :try_start_f1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_f9
    :goto_f9
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_30d

    const/4 v15, 0x3

    if-ne v13, v15, :cond_109

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_30d

    :cond_109
    const/4 v15, 0x3

    if-eq v13, v15, :cond_f9

    const/4 v15, 0x4

    if-eq v13, v15, :cond_f9

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v15, "admin"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19b

    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_123} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_123} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f1 .. :try_end_123} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_123} :catch_201
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_123} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f1 .. :try_end_123} :catch_2e3

    move-result-object v7

    :try_start_124
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    if-eqz v3, :cond_f9

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v2, v3}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    invoke-virtual {v2, v9}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_152
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_152} :catch_153
    .catch Ljava/lang/NullPointerException; {:try_start_124 .. :try_end_152} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_152} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_124 .. :try_end_152} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_124 .. :try_end_152} :catch_201
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_152} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_124 .. :try_end_152} :catch_2e3

    goto :goto_f9

    :catch_153
    move-exception v4

    :try_start_154
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed loading admin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_170
    .catch Ljava/lang/NullPointerException; {:try_start_154 .. :try_end_170} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_170} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_154 .. :try_end_170} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_154 .. :try_end_170} :catch_201
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_170} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_154 .. :try_end_170} :catch_2e3

    goto :goto_f9

    :catch_171
    move-exception v4

    move-object v10, v11

    :goto_173
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    :cond_19b
    :try_start_19b
    const-string v15, "failed-password-attempts"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e3

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b7
    .catch Ljava/lang/NullPointerException; {:try_start_19b .. :try_end_1b7} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_19b .. :try_end_1b7} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19b .. :try_end_1b7} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_19b .. :try_end_1b7} :catch_201
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1b7} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19b .. :try_end_1b7} :catch_2e3

    goto/16 :goto_f9

    :catch_1b9
    move-exception v4

    move-object v10, v11

    :goto_1bb
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    :cond_1e3
    :try_start_1e3
    const-string v15, "password-owner"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_205

    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f9

    :catch_201
    move-exception v15

    move-object v10, v11

    goto/16 :goto_6f

    :cond_205
    const-string v15, "active-password"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c4

    const/4 v15, 0x0

    const-string v16, "quality"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v15, 0x0

    const-string v16, "length"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v15, 0x0

    const-string v16, "uppercase"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v15, 0x0

    const-string v16, "lowercase"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v15, 0x0

    const-string v16, "letters"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v15, 0x0

    const-string v16, "numeric"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v15, 0x0

    const-string v16, "symbols"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v15, 0x0

    const-string v16, "nonletter"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_298
    .catch Ljava/lang/NullPointerException; {:try_start_1e3 .. :try_end_298} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_1e3 .. :try_end_298} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e3 .. :try_end_298} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_1e3 .. :try_end_298} :catch_201
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_298} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e3 .. :try_end_298} :catch_2e3

    goto/16 :goto_f9

    :catch_29a
    move-exception v4

    move-object v10, v11

    :goto_29c
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    :cond_2c4
    :try_start_2c4
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2e1
    .catch Ljava/lang/NullPointerException; {:try_start_2c4 .. :try_end_2e1} :catch_47
    .catch Ljava/lang/NumberFormatException; {:try_start_2c4 .. :try_end_2e1} :catch_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c4 .. :try_end_2e1} :catch_1b9
    .catch Ljava/io/FileNotFoundException; {:try_start_2c4 .. :try_end_2e1} :catch_201
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_2e1} :catch_29a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c4 .. :try_end_2e1} :catch_2e3

    goto/16 :goto_f9

    :catch_2e3
    move-exception v4

    move-object v10, v11

    :goto_2e5
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    :cond_30d
    move-object v10, v11

    goto/16 :goto_6f

    :catch_310
    move-exception v15

    goto/16 :goto_74

    :catch_313
    move-exception v4

    goto :goto_2e5

    :catch_315
    move-exception v4

    goto :goto_29c

    :catch_317
    move-exception v15

    goto/16 :goto_6f

    :catch_31a
    move-exception v4

    goto/16 :goto_1bb

    :catch_31d
    move-exception v4

    goto/16 :goto_173

    :catch_320
    move-exception v4

    goto/16 :goto_49
.end method

.method private lockNowUnchecked()V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0    # I

    if-nez p0, :cond_27

    const-string v0, "/data/system/device_policies.xml"

    :goto_4
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    .registers 19
    .param p1    # Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v8

    if-nez v8, :cond_42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const v2, 0x10400c0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2a

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ed

    const/4 v10, 0x1

    :goto_49
    if-eqz v10, :cond_f0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400c2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v14, 0x10805e6

    :goto_63
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400c0

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const v2, 0x10400c0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_d5

    :cond_ed
    const/4 v10, 0x0

    goto/16 :goto_49

    :cond_f0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v14, 0x108008a

    goto/16 :goto_63

    :cond_100
    const/4 v1, 0x0

    const v2, 0x10400c0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_109
    return-void
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    const/4 v4, 0x0

    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_21

    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x1

    if-nez p2, :cond_5

    const-string p2, ""

    :cond_5
    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f90

    array-length v3, v0

    if-le v3, v4, :cond_1f

    const/4 v3, 0x1

    :try_start_19
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1e} :catch_3c

    move-result v1

    :cond_1f
    :goto_1f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "global_http_proxy_host"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "global_http_proxy_port"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_3c
    move-exception v3

    goto :goto_1f
.end method

.method private saveSettingsLocked(I)V
    .registers 14
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    const/4 v7, 0x0

    :try_start_9
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_139

    :try_start_13
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v9, "utf-8"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v0, :cond_61

    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_5e

    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "name"

    iget-object v11, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_61
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v9, :cond_7d

    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7d
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v9, :cond_99

    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_99
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v9, :cond_b9

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eqz v9, :cond_125

    :cond_b9
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "quality"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "length"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "uppercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "lowercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "letters"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "numeric"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "symbols"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "nonletter"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_125
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_137} :catch_145

    move-object v7, v8

    :goto_138
    return-void

    :catch_139
    move-exception v2

    :goto_13a
    if-eqz v7, :cond_13f

    :try_start_13c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_143

    :cond_13f
    :goto_13f
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_138

    :catch_143
    move-exception v9

    goto :goto_13f

    :catch_145
    move-exception v2

    move-object v7, v8

    goto :goto_13a
.end method

.method private sendChangedNotification(I)V
    .registers 7
    .param p1    # I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_10
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .registers 2
    .param p1    # Z

    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .registers 14
    .param p1    # I

    const-wide/16 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_35

    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_30

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    :goto_2e
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_33
    move-wide v2, v8

    goto :goto_2e

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_38
    return-void
.end method

.method static validateQualityConstant(I)V
    .registers 4
    .param p0    # I

    sparse-switch p0, :sswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_20
    return-void

    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x8000 -> :sswitch_20
        0x10000 -> :sswitch_20
        0x20000 -> :sswitch_20
        0x40000 -> :sswitch_20
        0x50000 -> :sswitch_20
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_33

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    monitor-enter p0

    :try_start_39
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v6, :cond_b3

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_76
    if-ge v2, v0, :cond_a1

    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_9e

    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_a1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_b3
    monitor-exit p0

    goto/16 :goto_32

    :catchall_b6
    move-exception v7

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_39 .. :try_end_b8} :catchall_b6

    throw v7
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .registers 10
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_7

    move-object v3, v4

    :goto_6
    return-object v3

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_40

    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    :try_start_40
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_4e} :catch_50
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4e} :catch_75

    move-object v3, v5

    goto :goto_6

    :catch_50
    move-exception v0

    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    goto :goto_6

    :catch_75
    move-exception v0

    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    goto/16 :goto_6
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 12
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    if-eqz p1, :cond_95

    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v1, :cond_31

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_31
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-eq v6, v2, :cond_5e

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5e
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-nez v6, :cond_b4

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not specify uses-policy for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_95
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9c
    if-ge v3, v0, :cond_b8

    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-ne v6, v2, :cond_b5

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_b5

    :cond_b4
    return-object v1

    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    :cond_b8
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for policy #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 7
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_7

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_6
    return-object v3

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1d

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_6

    :catchall_1a
    move-exception v4

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v4

    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_39

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_1a

    goto :goto_6
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    :goto_5
    return v4

    :cond_6
    monitor-enter p0

    if-eqz p1, :cond_16

    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_11
    monitor-exit p0

    goto :goto_5

    :catchall_13
    move-exception v4

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v4

    :cond_16
    :try_start_16
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_35

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_32

    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_5

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_13

    goto :goto_5
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 4
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    monitor-enter p0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    goto :goto_5
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    goto :goto_5
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .registers 8
    .param p1    # I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    :goto_5
    return-object v4

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_32

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_2f

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_5

    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v4

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2c

    goto :goto_5
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    :goto_5
    return v4

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_19

    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_14

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_14
    monitor-exit p0

    goto :goto_5

    :catchall_16
    move-exception v5

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v5

    :cond_19
    :try_start_19
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_35

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_16

    goto :goto_5
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v2, 0x0

    :goto_5
    return v2

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_19
    monitor-exit p0

    goto :goto_5

    :catchall_1b
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v5

    :cond_1e
    :try_start_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v0, :cond_41

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v2, :cond_36

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_36
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_33

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_33

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_33

    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_1b

    goto :goto_5
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const-wide/16 v6, 0x0

    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_8

    move-wide v4, v6

    :goto_7
    return-wide v4

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1d

    :try_start_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_18
    monitor-exit p0

    move-wide v4, v6

    goto :goto_7

    :cond_1b
    move-wide v6, v4

    goto :goto_18

    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_4a

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    cmp-long v8, v4, v6

    if-nez v8, :cond_3b

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3b
    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_38

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_38

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_38

    :cond_4a
    monitor-exit p0

    goto :goto_7

    :catchall_4c
    move-exception v6

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_10 .. :try_end_4e} :catchall_4c

    throw v6
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .registers 13
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const-wide/16 v6, 0x0

    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_8

    move-wide v4, v6

    :goto_7
    return-wide v4

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_1d

    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_16
    monitor-exit p0

    goto :goto_7

    :catchall_18
    move-exception v6

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v6

    :cond_1b
    move-wide v4, v6

    goto :goto_16

    :cond_1d
    const-wide/16 v4, 0x0

    :try_start_1f
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v0, :cond_49

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    cmp-long v8, v4, v6

    if-eqz v8, :cond_44

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_46

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_46

    :cond_44
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_18

    goto :goto_7
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :cond_19
    monitor-exit p0

    goto :goto_5

    :catchall_1b
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v5

    :cond_1e
    :try_start_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    goto :goto_5
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :cond_19
    monitor-exit p0

    goto :goto_5

    :catchall_1b
    move-exception v5

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v5

    :cond_1e
    :try_start_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_1b

    goto :goto_5
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_15
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_18
    move v5, v3

    goto :goto_15

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_5
    return v3

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_19
    monitor-exit p0

    move v3, v5

    goto :goto_5

    :cond_1c
    move v5, v3

    goto :goto_19

    :cond_1e
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_38

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_35

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    monitor-exit p0

    goto :goto_5

    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .registers 14
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/RemoteCallback;
    .param p3    # I

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_11
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d

    move-result-object v9

    if-nez v9, :cond_20

    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_46
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_5

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_1d

    goto :goto_5

    :catch_46
    move-exception v0

    goto :goto_1b
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_7

    move v4, v5

    :goto_6
    return v4

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_1c

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_15
    monitor-exit p0

    goto :goto_6

    :catchall_17
    move-exception v4

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v4

    :cond_1a
    move v4, v5

    goto :goto_15

    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_3b

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_6

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_17

    move v4, v5

    goto :goto_6
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 3
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_4

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .registers 4
    .param p1    # I

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V

    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_5
    return v1

    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-nez v0, :cond_2c

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v1

    :cond_2c
    :try_start_2c
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_5
.end method

.method public installCaCert([B)Z
    .registers 13
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_b
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_18
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_18} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_37

    move-result-object v5

    :try_start_19
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_49

    move-result-object v4

    :try_start_1f
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_41

    if-eqz v4, :cond_2c

    :try_start_28
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_49

    const/4 v4, 0x0

    :cond_2c
    :goto_2c
    return v6

    :catch_2d
    move-exception v0

    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem converting cert"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    goto :goto_2c

    :catch_37
    move-exception v3

    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem reading cert"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    goto :goto_2c

    :catchall_41
    move-exception v6

    if-eqz v4, :cond_48

    :try_start_44
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    const/4 v4, 0x0

    :cond_48
    throw v6
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_49} :catch_49

    :catch_49
    move-exception v2

    const-string v6, "DevicePolicyManagerService"

    const-string v8, "installCaCertsToKeyChain(): "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    move v6, v7

    goto :goto_2c
.end method

.method public isActivePasswordSufficient(I)Z
    .registers 7
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_7

    :goto_6
    return v1

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_26

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v4

    if-ge v3, v4, :cond_29

    :cond_26
    monitor-exit p0

    move v1, v2

    goto :goto_6

    :cond_29
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_34

    monitor-exit p0

    goto :goto_6

    :catchall_31
    move-exception v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    :try_start_34
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_6c

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_6c

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_6c

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_6c

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_6c

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_6c

    :goto_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_34 .. :try_end_6b} :catchall_31

    goto :goto_6

    :cond_6c
    move v1, v2

    goto :goto_6a
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    monitor-exit p0

    goto :goto_5

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    monitor-enter p0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    monitor-exit p0

    goto :goto_5

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method loadDeviceOwner()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public lockNow()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    monitor-exit p0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_7

    move v3, v4

    :goto_6
    return v3

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_35

    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_6

    :catchall_2f
    move-exception v3

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v3

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2f

    move v3, v4

    goto :goto_6
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-nez v0, :cond_14

    monitor-exit p0

    goto :goto_4

    :catchall_11
    move-exception v3

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3

    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_3c

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v3, :cond_34

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    monitor-exit p0

    goto :goto_4

    :cond_34
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_11

    move-result-wide v1

    :try_start_40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    :try_start_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_4

    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_11
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_10
    return-void
.end method

.method removeUserData(I)V
    .registers 7
    .param p1    # I

    monitor-enter p0

    if-nez p1, :cond_c

    :try_start_3
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_b

    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 9
    .param p1    # I

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_40

    move-result-wide v0

    :try_start_14
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    if-lez v2, :cond_30

    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v4, v2, :cond_30

    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V

    :cond_30
    const-string v4, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_3b

    :cond_36
    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_40
    move-exception v4

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_40

    throw v4
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 8
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_18

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_32

    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_39

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_1d
    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_2f

    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_34

    :cond_2f
    :try_start_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_39
    move-exception v3

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .registers 35
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    const/16 v28, 0x0

    :goto_a
    return v28

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/16 v28, 0x0

    const/16 v29, 0x2

    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v23

    if-eqz v23, :cond_79

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_71

    const/high16 v28, 0x60000

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_71

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: password quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto :goto_a

    :catchall_6e
    move-exception v28

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_17 .. :try_end_70} :catchall_6e

    throw v28

    :cond_71
    :try_start_71
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    :cond_79
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v0, v10, :cond_ba

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: password length "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required length "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_ba
    const/high16 v28, 0x60000

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_287

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/4 v7, 0x0

    :goto_cd
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_115

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v5, v0, :cond_ee

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v5, v0, :cond_ee

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v26, v26, 0x1

    :goto_eb
    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    :cond_ee
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v5, v0, :cond_ff

    const/16 v28, 0x7a

    move/from16 v0, v28

    if-gt v5, v0, :cond_ff

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_eb

    :cond_ff
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v5, v0, :cond_110

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v5, v0, :cond_110

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_eb

    :cond_110
    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_eb

    :cond_115
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v13

    if-ge v11, v13, :cond_14e

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_14e
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v16

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_18f

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of numerical digits "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of numerical digits "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_18f
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v14

    if-ge v12, v14, :cond_1c8

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of lowercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_1c8
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v18

    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_209

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of uppercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_209
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v17

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_24a

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of special symbols "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of special symbols "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_24a
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v15

    move/from16 v0, v20

    if-ge v0, v15, :cond_287

    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of non-letter characters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_a

    :cond_287
    monitor-exit p0
    :try_end_288
    .catchall {:try_start_71 .. :try_end_288} :catchall_6e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    if-ltz v28, :cond_2b1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v6, :cond_2b1

    const-string v28, "DevicePolicyManagerService"

    const-string v29, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    goto/16 :goto_a

    :cond_2b1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_2b5
    new-instance v27, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v28

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    monitor-enter p0
    :try_end_2d0
    .catchall {:try_start_2b5 .. :try_end_2d0} :catchall_2fd

    and-int/lit8 v28, p2, 0x1

    if-eqz v28, :cond_2f7

    move/from16 v19, v6

    :goto_2d6
    :try_start_2d6
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v19

    if-eq v0, v1, :cond_2ef

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_2ef
    monitor-exit p0
    :try_end_2f0
    .catchall {:try_start_2d6 .. :try_end_2f0} :catchall_2fa

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v28, 0x1

    goto/16 :goto_a

    :cond_2f7
    const/16 v19, -0x1

    goto :goto_2d6

    :catchall_2fa
    move-exception v28

    :try_start_2fb
    monitor-exit p0
    :try_end_2fc
    .catchall {:try_start_2fb .. :try_end_2fc} :catchall_2fa

    :try_start_2fc
    throw v28
    :try_end_2fd
    .catchall {:try_start_2fc .. :try_end_2fd} :catchall_2fd

    :catchall_2fd
    move-exception v28

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 13
    .param p1    # Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1e
    if-eqz p3, :cond_30

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2f
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_25

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 16
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z
    .param p3    # I

    iget-boolean v9, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    if-nez v4, :cond_33

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_33
    monitor-enter p0

    :try_start_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4d

    move-result-wide v2

    if-nez p2, :cond_50

    :try_start_3a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_50

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v9

    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :catchall_4d
    move-exception v9

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v9

    :cond_50
    :try_start_50
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, -0x1

    if-eqz p2, :cond_7b

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_64
    if-ge v1, v0, :cond_7b

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    move v8, v1

    :cond_7b
    const/4 v9, -0x1

    if-ne v8, v9, :cond_9b

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    :goto_8a
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_50 .. :try_end_92} :catchall_48

    :try_start_92
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_4d

    goto/16 :goto_4

    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_9b
    :try_start_9b
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_48

    goto :goto_8a
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .registers 16
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    monitor-enter p0

    :try_start_18
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_3c

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_67

    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_69

    move-result-wide v0

    :try_start_40
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_6c

    :try_start_64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_67
    monitor-exit p0

    goto :goto_4

    :catchall_69
    move-exception v3

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_69

    throw v3

    :catchall_6c
    move-exception v3

    :try_start_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_69
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/16 v1, 0x8

    :try_start_18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_25

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_25
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_13

    goto :goto_4
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    monitor-enter p0

    :try_start_34
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_50

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1, p2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_5

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    :try_start_50
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set device owner to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device_provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catchall {:try_start_50 .. :try_end_87} :catchall_4d
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 27
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v15, v10, v12

    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_68

    const-wide/16 v7, 0x0

    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :try_start_24
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    const/16 v19, 0x15c3

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x48000000

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_64

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_85

    :cond_64
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_68
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_74

    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    goto :goto_20

    :cond_74
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_82

    const-wide/32 v5, 0x5265c00

    :cond_82
    add-long v7, v12, v5

    goto :goto_20

    :catchall_85
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 16
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_6

    const/4 v3, 0x0

    :goto_5
    return-object v3

    :cond_6
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_17

    :try_start_c
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :catchall_14
    move-exception v8

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v8

    :cond_17
    const/4 v8, 0x0

    :try_start_18
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2b

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    monitor-exit p0

    goto :goto_5

    :cond_4b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_72

    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_5

    :cond_72
    if-nez p2, :cond_8b

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    :goto_7d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_5

    :cond_8b
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_18 .. :try_end_92} :catchall_14

    goto :goto_7d
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/16 v1, 0x9

    :try_start_18
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_25

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_25
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_13

    goto :goto_4
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v1, 0x4

    :try_start_a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_1b

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1b
    monitor-exit p0

    goto :goto_4

    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .registers 8
    .param p1    # Landroid/content/ComponentName;
    .param p2    # J
    .param p4    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x3

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_2d

    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_13

    goto :goto_4
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .registers 12
    .param p1    # Landroid/content/ComponentName;
    .param p2    # J
    .param p4    # I

    const-wide/16 v3, 0x0

    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_18

    :try_start_d
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_15
    move-exception v3

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v3

    :cond_18
    cmp-long v5, p2, v3

    if-gez v5, :cond_24

    :try_start_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    cmp-long v5, p2, v3

    if-lez v5, :cond_70

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    :goto_33
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v3, p2, v3

    if-lez v3, :cond_62

    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_1c .. :try_end_6f} :catchall_15

    goto :goto_6

    :cond_70
    move-wide v1, v3

    goto :goto_33
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_16

    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_24

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_13

    goto :goto_4
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I

    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_19

    :try_start_e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    const/4 v1, 0x0

    :try_start_1a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_27

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_16

    goto :goto_4
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .registers 13
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z
    .param p3    # I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_6

    :goto_5
    return v5

    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_17

    :try_start_c
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_14
    move-exception v5

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v5

    :cond_17
    if-nez p3, :cond_1f

    :try_start_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_43

    :cond_1f
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_5

    :cond_43
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_50

    monitor-exit p0

    goto :goto_5

    :cond_50
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_59

    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_59
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_66
    if-ge v2, v0, :cond_76

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_76
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    if-eqz v3, :cond_7e

    const/4 v5, 0x3

    :goto_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_19 .. :try_end_7d} :catchall_14

    goto :goto_5

    :cond_7e
    const/4 v5, 0x1

    goto :goto_7c
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 9
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eq v0, v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v0, :cond_21

    :try_start_16
    const-string v4, "1"

    :goto_18
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_24

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_20
    return-void

    :cond_21
    :try_start_21
    const-string v4, "0"
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_18

    :catchall_24
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V

    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    monitor-exit p0

    goto :goto_4

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public uninstallCaCert([B)V
    .registers 14
    .param p1    # [B

    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    const/4 v0, 0x0

    :try_start_e
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_15} :catch_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_31

    move-result-object v0

    :try_start_16
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1f} :catch_46

    move-result-object v8

    :try_start_20
    invoke-interface {v8, v0}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_3a
    .catchall {:try_start_20 .. :try_end_23} :catchall_56

    :try_start_23
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_46

    :goto_26
    const/4 v7, 0x0

    :goto_27
    return-void

    :catch_28
    move-exception v1

    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem creating X509Certificate"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catch_31
    move-exception v6

    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem reading certificate"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :catch_3a
    move-exception v4

    :try_start_3b
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "from CaCertUninstaller: "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_56

    :try_start_42
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_26

    :catch_46
    move-exception v5

    const-string v9, "DevicePolicyManagerService"

    const-string v10, "CaCertUninstaller: "

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_27

    :catchall_56
    move-exception v9

    :try_start_57
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    const/4 v7, 0x0

    throw v9
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5c} :catch_46
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 10
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_29

    const-wide/32 v3, 0x7fffffff

    :goto_1b
    :try_start_1b
    iput-wide v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_36

    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v5

    long-to-int v6, v3

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_3b
    .catchall {:try_start_1d .. :try_end_25} :catchall_36

    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    :cond_29
    :try_start_29
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_36

    goto :goto_1b

    :catchall_36
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_3b
    move-exception v0

    :try_start_3c
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_36

    goto :goto_25
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1    # Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_45

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_d
    if-ltz v1, :cond_20

    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_46

    const/4 v0, 0x1

    :cond_20
    if-nez v0, :cond_45

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    :cond_45
    return-void

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public wipeData(II)V
    .registers 7
    .param p1    # I
    .param p2    # I

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    move-result-wide v0

    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_4

    :catchall_1a
    move-exception v2

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v2

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1a
.end method

.method wipeDataLocked(I)V
    .registers 9
    .param p1    # I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_3c

    move v1, v4

    :goto_f
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_14

    move v3, v4

    :cond_14
    if-nez v1, :cond_18

    if-eqz v3, :cond_3e

    :cond_18
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_3e

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "always_reset"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_3b
    return-void

    :cond_3c
    move v1, v3

    goto :goto_f

    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_3b

    :catch_44
    move-exception v0

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method
