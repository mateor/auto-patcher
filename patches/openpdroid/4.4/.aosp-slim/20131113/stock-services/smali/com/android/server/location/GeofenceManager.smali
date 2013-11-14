.class public Lcom/android/server/location/GeofenceManager;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GeofenceManager$GeofenceHandler;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final MAX_AGE_NANOS:J = 0x45d964b800L

.field private static final MAX_INTERVAL_MS:J = 0x6ddd00L

.field private static final MAX_SPEED_M_S:I = 0x64

.field private static final MIN_INTERVAL_MS:J = 0xea60L

.field private static final MSG_UPDATE_FENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeofenceManager"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mFences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/location/GeofenceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

.field private mLastLocationUpdate:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateInterval:J

.field private mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z

.field private mReceivingLocationUpdates:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/GeofenceManager;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/location/LocationBlacklist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-direct {v1, p0}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;)V

    iput-object v1, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    iput-object p2, p0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GeofenceManager;)V
    .registers 1
    .param p0    # Lcom/android/server/location/GeofenceManager;

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void
.end method

.method private getFreshLocationLocked()Landroid/location/Location;
    .registers 9

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v4, :cond_1b

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    :goto_7
    if-nez v0, :cond_17

    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_1d

    move-object v0, v3

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v3

    goto :goto_7

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0x45d964b800L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1a

    move-object v0, v3

    goto :goto_1a
.end method

.method private removeExpiredFencesLocked()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    iget-wide v4, v1, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_20
    return-void
.end method

.method private scheduleUpdateFencesLocked()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-nez v0, :cond_c

    iput-boolean v1, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->sendEmptyMessage(I)Z

    :cond_c
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 12
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v7

    invoke-virtual {p0, v8, p1}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_12
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1    # Landroid/app/PendingIntent;

    sget-boolean v1, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v1, :cond_1c

    const-string v1, "GeofenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentEnter: pendingIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1    # Landroid/app/PendingIntent;

    sget-boolean v1, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v1, :cond_1c

    const-string v1, "GeofenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentExit: pendingIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GeofenceManager;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private updateFences()V
    .registers 31

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    const/16 v20, 0x0

    :try_start_13
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->removeExpiredFencesLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GeofenceManager;->getFreshLocationLocked()Landroid/location/Location;

    move-result-object v13

    const-wide v14, 0x7fefffffffffffffL

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_31
    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_106

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/location/GeofenceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7d

    sget-boolean v20, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v20, :cond_31

    const-string v20, "GeofenceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "skipping geofence processing for blacklisted app: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catchall_7a
    move-exception v20

    monitor-exit v21
    :try_end_7c
    .catchall {:try_start_13 .. :try_end_7c} :catchall_7a

    throw v20

    :cond_7d
    :try_start_7d
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v17

    if-ltz v17, :cond_d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/location/GeofenceState;->mUid:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_d3

    sget-boolean v20, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v20, :cond_31

    const-string v20, "GeofenceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "skipping geofence processing for no op app: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_d3
    const/16 v16, 0x1

    if-eqz v13, :cond_31

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/server/location/GeofenceState;->processLocation(Landroid/location/Location;)I

    move-result v5

    and-int/lit8 v20, v5, 0x1

    if-eqz v20, :cond_ec

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ec
    and-int/lit8 v20, v5, 0x2

    if-eqz v20, :cond_fb

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fb
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/location/GeofenceState;->getDistanceToBoundary()D

    move-result-wide v7

    cmpg-double v20, v7, v14

    if-gez v20, :cond_31

    move-wide v14, v7

    goto/16 :goto_31

    :cond_106
    if-eqz v16, :cond_20a

    if-eqz v13, :cond_205

    const-wide v22, 0x7fefffffffffffffL

    move-wide/from16 v0, v22

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v20

    if-eqz v20, :cond_205

    const-wide v22, 0x415b774000000000L

    const-wide v24, 0x40ed4c0000000000L

    const-wide v26, 0x408f400000000000L

    mul-double v26, v26, v14

    const-wide/high16 v28, 0x4059000000000000L

    div-double v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-long v11, v0

    :goto_137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v20, v0

    if-eqz v20, :cond_149

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    move-wide/from16 v22, v0

    cmp-long v20, v22, v11

    if-eqz v20, :cond_188

    :cond_149
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    new-instance v18, Landroid/location/LocationRequest;

    invoke-direct/range {v18 .. v18}, Landroid/location/LocationRequest;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_188
    :goto_188
    sget-boolean v20, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v20, :cond_1ee

    const-string v20, "GeofenceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateFences: location="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mFences.size()="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mReceivingLocationUpdates="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mLocationUpdateInterval="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mLastLocationUpdate="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ee
    monitor-exit v21
    :try_end_1ef
    .catchall {:try_start_7d .. :try_end_1ef} :catchall_7a

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_239

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GeofenceManager;->sendIntentExit(Landroid/app/PendingIntent;)V

    goto :goto_1f3

    :cond_205
    const-wide/32 v11, 0xea60

    goto/16 :goto_137

    :cond_20a
    :try_start_20a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    move/from16 v20, v0

    if-eqz v20, :cond_188

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GeofenceManager;->mLocationUpdateInterval:J

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_237
    .catchall {:try_start_20a .. :try_end_237} :catchall_7a

    goto/16 :goto_188

    :cond_239
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_23d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_24f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GeofenceManager;->sendIntentEnter(Landroid/app/PendingIntent;)V

    goto :goto_23d

    :cond_24f
    return-void
.end method


# virtual methods
.method public addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    .registers 18
    .param p1    # Landroid/location/LocationRequest;
    .param p2    # Landroid/location/Geofence;
    .param p3    # Landroid/app/PendingIntent;
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v2, :cond_48

    const-string v2, "GeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFence: request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", geofence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    new-instance v1, Lcom/android/server/location/GeofenceState;

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v3

    move-object v2, p2

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/GeofenceState;-><init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5b
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    :goto_63
    if-ltz v9, :cond_82

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/GeofenceState;

    iget-object v2, v10, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p2, v2}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, v10, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_82
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v3

    return-void

    :cond_8c
    add-int/lit8 v9, v9, -0x1

    goto :goto_63

    :catchall_8f
    move-exception v2

    monitor-exit v3
    :try_end_91
    .catchall {:try_start_5b .. :try_end_91} :catchall_8f

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1    # Ljava/io/PrintWriter;

    const-string v2, "  Geofences:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_b

    :cond_35
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .param p1    # Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mReceivingLocationUpdates:Z

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager;->mLastLocationUpdate:Landroid/location/Location;

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mHandler:Lcom/android/server/location/GeofenceManager$GeofenceHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->removeMessages(I)V

    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->updateFences()V

    return-void

    :cond_18
    const/4 v0, 0x1

    :try_start_19
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceManager;->mPendingUpdate:Z

    goto :goto_13

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/content/Intent;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/os/Bundle;

    return-void
.end method

.method public removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1    # Landroid/location/Geofence;
    .param p2    # Landroid/app/PendingIntent;

    sget-boolean v2, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v2, :cond_26

    const-string v2, "GeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFence: fence="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_29
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    if-nez p1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_49

    throw v2

    :cond_4c
    :try_start_4c
    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {p1, v2}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :cond_58
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_49

    return-void
.end method

.method public removeFence(Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/location/GeofenceManager;->D:Z

    if-eqz v2, :cond_1c

    const-string v2, "GeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFence: packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v3, p0, Lcom/android/server/location/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/location/GeofenceManager;->mFences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GeofenceState;

    iget-object v2, v1, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3d

    throw v2

    :cond_40
    :try_start_40
    invoke-direct {p0}, Lcom/android/server/location/GeofenceManager;->scheduleUpdateFencesLocked()V

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3d

    return-void
.end method
