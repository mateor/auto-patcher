.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1    # Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v6, "passive"

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v11}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/FlpHardwareProvider;)Z
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/FlpHardwareProvider;)Z
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # [I

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/FlpHardwareProvider;II)V
    .registers 3
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .registers 7
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # Landroid/location/Location;

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # Landroid/hardware/location/IFusedLocationHardwareSink;

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/FlpHardwareProvider;)I
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .registers 3
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I
    .param p2    # Landroid/location/FusedBatchOptions;

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .registers 3
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I
    .param p2    # Landroid/location/FusedBatchOptions;

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/FlpHardwareProvider;I)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/FlpHardwareProvider;)Z
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .registers 2
    .param p0    # Lcom/android/server/location/FlpHardwareProvider;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_c
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .registers 2
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    :cond_b
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method public static isSupported()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onDataReport(Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    :try_start_6
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_d

    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_11

    :cond_d
    :goto_d
    return-void

    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2

    :catch_11
    move-exception v0

    const-string v2, "FlpHardwareProvider"

    const-string v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private onGeofenceAdd(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .registers 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/location/Location;

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    return-void
.end method

.method private onGeofencePause(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    return-void
.end method

.method private onGeofenceRemove(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    return-void
.end method

.method private onGeofenceResume(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .registers 15
    .param p1    # I
    .param p2    # Landroid/location/Location;
    .param p3    # I
    .param p4    # J
    .param p6    # I

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .registers 10
    .param p1    # [Landroid/location/Location;

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_16

    aget-object v4, v0, v2

    const-string v6, "fused"

    invoke-virtual {v4, v6}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    iget-object v7, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_19
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    if-eqz v5, :cond_21

    :try_start_1e
    invoke-interface {v5, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_25

    :cond_21
    :goto_21
    return-void

    :catchall_22
    move-exception v6

    :try_start_23
    monitor-exit v7
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v6

    :catch_25
    move-exception v1

    const-string v6, "FlpHardwareProvider"

    const-string v7, "RemoteException calling onLocationAvailable"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .registers 7
    .param p0    # I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_26

    :pswitch_6
    const-string v3, "FlpHardwareProvider"

    const-string v4, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1a
    :pswitch_1a
    return v0

    :pswitch_1b
    move v0, v1

    goto :goto_1a

    :pswitch_1d
    move v0, v2

    goto :goto_1a

    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_1a

    :pswitch_21
    const/4 v0, 0x3

    goto :goto_1a

    :pswitch_23
    const/4 v0, 0x4

    goto :goto_1a

    nop

    :pswitch_data_26
    .packed-switch -0x6
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_6
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .registers 4
    .param p1    # Landroid/location/Location;

    const-string v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    return-object p1
.end method


# virtual methods
.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
