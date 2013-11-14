.class public final Lcom/android/server/location/FusedProxy;
.super Ljava/lang/Object;
.source "FusedProxy.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V
    .registers 16
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;
    .param p3    # Landroid/hardware/location/IFusedLocationHardware;
    .param p4    # I
    .param p5    # I
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FusedProxy"

    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/location/FusedLocationHardwareSecure;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-direct {v0, p3, p1, v1}, Lcom/android/server/location/FusedLocationHardwareSecure;-><init>(Landroid/hardware/location/IFusedLocationHardware;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

    new-instance v7, Lcom/android/server/location/FusedProxy$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/FusedProxy$1;-><init>(Lcom/android/server/location/FusedProxy;)V

    new-instance v0, Lcom/android/server/ServiceWatcher;

    const-string v2, "FusedProxy"

    const-string v3, "com.android.location.service.FusedProvider"

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/FusedProxy;)Lcom/android/server/location/FusedLocationHardwareSecure;
    .registers 2
    .param p0    # Lcom/android/server/location/FusedProxy;

    iget-object v0, p0, Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/FusedProxy;Landroid/hardware/location/IFusedLocationHardware;)V
    .registers 2
    .param p0    # Lcom/android/server/location/FusedProxy;
    .param p1    # Landroid/hardware/location/IFusedLocationHardware;

    invoke-direct {p0, p1}, Lcom/android/server/location/FusedProxy;->bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V

    return-void
.end method

.method private bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V
    .registers 6
    .param p1    # Landroid/hardware/location/IFusedLocationHardware;

    iget-object v2, p0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IFusedProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedProvider;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v2, "FusedProxy"

    const-string v3, "No instance of FusedProvider found on FusedLocationHardware connected."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void

    :cond_14
    :try_start_14
    invoke-interface {v1, p1}, Landroid/location/IFusedProvider;->onFusedLocationHardwareChange(Landroid/hardware/location/IFusedLocationHardware;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_13

    :catch_18
    move-exception v0

    const-string v2, "FusedProxy"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;
    .registers 13
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/os/Handler;
    .param p2    # Landroid/hardware/location/IFusedLocationHardware;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    new-instance v0, Lcom/android/server/location/FusedProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/FusedProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V

    iget-object v1, v0, Lcom/android/server/location/FusedProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    :cond_14
    return-object v0
.end method
