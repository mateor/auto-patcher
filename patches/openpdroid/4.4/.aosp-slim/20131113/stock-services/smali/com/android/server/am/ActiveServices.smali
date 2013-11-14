.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$1;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$DelayingProcess;
    }
.end annotation


# static fields
.field static final BG_START_TIMEOUT:I = 0x3a98

.field static final DEBUG_DELAYED_SERVICE:Z = false

.field static final DEBUG_DELAYED_STATS:Z = false

.field static final DEBUG_MU:Z = false

.field static final DEBUG_SERVICE:Z = false

.field static final DEBUG_SERVICE_EXECUTING:Z = false

.field static final MAX_SERVICE_INACTIVITY:I = 0x1b7740

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field static final SERVICE_MIN_RESTART_TIME_BETWEEN:I = 0x2710

.field static final SERVICE_RESET_RUN_DURATION:I = 0xea60

.field static final SERVICE_RESTART_DURATION:I = 0x1388

.field static final SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_MU:Ljava/lang/String; = "ActivityManagerServiceMU"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1    # Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_2f
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    return-void

    :cond_32
    const/4 v0, 0x3

    goto :goto_2f
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 5
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_6
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 16
    .param p1    # Lcom/android/server/am/ServiceRecord;

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_8
    if-ltz v2, :cond_7e

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_7b

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    :try_start_22
    iget-object v11, v3, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2d

    :goto_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :catch_2d
    move-exception v4

    const-string v12, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure disconnecting service "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " to connection "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    iget-object v11, v11, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " (in "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    iget-object v11, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_7b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_7e
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_dd

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_dd

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    :goto_90
    if-ltz v5, :cond_dd

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/IntentBindRecord;

    iget-boolean v11, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v11, :cond_bb

    const/4 v11, 0x0

    :try_start_9f
    const-string v12, "bring down unbind"

    invoke-direct {p0, p1, v11, v12}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v12, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v12}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-interface {v11, p1, v12}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_bb} :catch_be

    :cond_bb
    :goto_bb
    add-int/lit8 v5, v5, -0x1

    goto :goto_90

    :catch_be
    move-exception v4

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception when unbinding service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_bb

    :cond_dd
    iget v12, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_125

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_eb
    invoke-static {v12, v13, v11}, Lcom/android/server/am/EventLogTags;->writeAmDestroyService(III)V

    iget v11, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v11}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v10

    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    iput v11, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_10f
    if-ge v5, v0, :cond_127

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, p1, :cond_122

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_122
    add-int/lit8 v5, v5, 0x1

    goto :goto_10f

    :cond_125
    const/4 v11, -0x1

    goto :goto_eb

    :cond_127
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v11, 0x0

    iput v11, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    const/4 v11, 0x0

    iput-object v11, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_178

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v12

    monitor-enter v12

    :try_start_146
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    monitor-exit v12
    :try_end_14c
    .catchall {:try_start_146 .. :try_end_14c} :catchall_1c0

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v11, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_178

    const/4 v11, 0x0

    :try_start_15a
    const-string v12, "destroy"

    invoke-direct {p0, p1, v11, v12}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v11, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_172} :catch_1c3

    :goto_172
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    :cond_178
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_185

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    :cond_185
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v11, v11, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v11, :cond_193

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v11, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    :cond_193
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v11, :cond_1bc

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    iget v11, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v11, :cond_1bc

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    const/4 v11, 0x0

    iput-object v11, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    :cond_1bc
    invoke-virtual {v10, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    return-void

    :catchall_1c0
    move-exception v11

    :try_start_1c1
    monitor-exit v12
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw v11

    :catch_1c3
    move-exception v4

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception when destroying service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_172
.end method

.method private final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    .registers 19
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_12

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    const/4 v13, 0x0

    :goto_11
    return-object v13

    :cond_12
    if-nez p4, :cond_1e

    iget-wide v3, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1e

    const/4 v13, 0x0

    goto :goto_11

    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_35

    iget v1, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is stopped"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v1, "ActivityManager"

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_11

    :cond_91
    :try_start_91
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9d} :catch_190
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_9d} :catch_ce

    :goto_9d
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_f4

    const/4 v9, 0x1

    :goto_a6
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-nez v9, :cond_16b

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    if-eqz v11, :cond_111

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_111

    :try_start_bb
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11, v1, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    move/from16 v0, p3

    invoke-direct {p0, p1, v11, v0}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_cb} :catch_f6

    const/4 v13, 0x0

    goto/16 :goto_11

    :catch_ce
    move-exception v12

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_f4
    const/4 v9, 0x0

    goto :goto_a6

    :catch_f6
    move-exception v12

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_111
    :goto_111
    if-nez v11, :cond_172

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    const-string v6, "service"

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    if-nez v11, :cond_16e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": process is bad"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v1, "ActivityManager"

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_11

    :cond_16b
    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_111

    :cond_16e
    if-eqz v9, :cond_172

    iput-object v11, p1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    :cond_172
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17f
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v1, :cond_18d

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_18d

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_18d
    const/4 v13, 0x0

    goto/16 :goto_11

    :catch_190
    move-exception v1

    goto/16 :goto_9d
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .registers 10
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z
    .param p3    # Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v3, :cond_4b

    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-virtual {v2, v5, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    :cond_1c
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3d

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v4, p2

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, v5, :cond_3d

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_3d
    :goto_3d
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    return-void

    :cond_4b
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3d

    if-eqz p2, :cond_3d

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_3d

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_3d
.end method

.method private collectForceStopServicesLocked(Ljava/lang/String;IZZLandroid/util/ArrayMap;Ljava/util/ArrayList;)Z
    .registers 15
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z
    .param p4    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_29

    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_1a

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_1a
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_26

    if-nez p3, :cond_26

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_52

    :cond_26
    if-nez p4, :cond_2a

    move v0, v3

    :cond_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4b

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    :cond_4b
    iput-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v7, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/FileDescriptor;
    .param p3    # Ljava/io/PrintWriter;
    .param p4    # Lcom/android/server/am/ServiceRecord;
    .param p5    # [Ljava/lang/String;
    .param p6    # Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    :try_start_14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "SERVICE "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8d

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    :goto_41
    if-eqz p6, :cond_46

    invoke-virtual {p4, p3, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_93

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8c

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_8c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    :try_start_5c
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_61} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_b7

    :try_start_61
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v3, v4, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_96

    :try_start_89
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8c} :catch_b7

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    :try_start_8d
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    :catchall_93
    move-exception v3

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_93

    throw v3

    :catchall_96
    move-exception v3

    :try_start_97
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v3
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9b} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9b} :catch_b7

    :catch_9b
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Failure while dumping the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c

    :catch_b7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .registers 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;
    .param p3    # I

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    if-ne v0, p2, :cond_7

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c
    return-object v0
.end method

.method private final isServiceNeeded(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .registers 6
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z
    .param p3    # Z

    const/4 v0, 0x1

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-nez p2, :cond_c

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    :cond_c
    if-nez p3, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 15
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Lcom/android/server/am/ProcessRecord;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_d
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "create"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v10, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    const/4 v6, 0x0

    :try_start_27
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_c8

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_37
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1, v8, v3, v5}, Lcom/android/server/am/EventLogTags;->writeAmCreateService(IILjava/lang/String;II)V

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_cf

    :try_start_4f
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_cc

    :try_start_55
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v5, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v0, p1, v1, v3, v5}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_78
    .catchall {:try_start_55 .. :try_end_78} :catchall_cf

    const/4 v6, 0x1

    if-nez v6, :cond_83

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    :cond_83
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_a6

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_a6

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a6

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    invoke-direct {p0, p1, p3, v10}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_ba

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    :cond_ba
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_c7

    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_c7

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_c7
    return-void

    :cond_c8
    :try_start_c8
    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;
    :try_end_ca
    .catchall {:try_start_c8 .. :try_end_ca} :catchall_cf

    goto/16 :goto_37

    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    if-nez v6, :cond_da

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    :cond_da
    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .registers 11
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Lcom/android/server/am/IntentBindRecord;
    .param p3    # Z
    .param p4    # Z

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    iget-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v3, :cond_13

    if-eqz p4, :cond_42

    :cond_13
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_42

    :try_start_1b
    const-string v3, "bind"

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v3, p1, v4, p4, v5}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    if-nez p4, :cond_3c

    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    :cond_3c
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_42} :catch_44

    :cond_42
    move v1, v2

    goto :goto_c

    :catch_44
    move-exception v0

    goto :goto_c
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 6
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_19

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    return-void

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 35
    .param p1    # Landroid/content/Intent;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .param p7    # Z

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "service"

    const/4 v10, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_269

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    :goto_2f
    if-nez v3, :cond_42

    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    :cond_42
    if-nez v3, :cond_16f

    :try_start_44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v9, 0x400

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-interface {v4, v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    if-eqz v23, :cond_8a

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_5a
    if-nez v8, :cond_8c

    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " U="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": not found"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_89
    return-object v4

    :cond_8a
    const/4 v8, 0x0

    goto :goto_5a

    :cond_8c
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p5, :cond_cf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v9, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b4

    const/16 p5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v25

    :cond_b4
    new-instance v24, Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p5

    invoke-virtual {v4, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v24

    :cond_cf
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_d9} :catch_262

    if-nez v22, :cond_265

    if-eqz p6, :cond_265

    :try_start_dd
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v10, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v26

    monitor-enter v26
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_fa} :catch_16c

    :try_start_fa
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v9, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v5

    monitor-exit v26
    :try_end_109
    .catchall {:try_start_fa .. :try_end_109} :catchall_169

    :try_start_109
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v9, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_114} :catch_16c

    :try_start_114
    invoke-virtual {v10, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v20, 0x0

    :goto_12f
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_16f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v9, :cond_166

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_162
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_162} :catch_262

    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v18, v18, -0x1

    :cond_166
    add-int/lit8 v20, v20, 0x1

    goto :goto_12f

    :catchall_169
    move-exception v4

    :try_start_16a
    monitor-exit v26
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    :try_start_16b
    throw v4
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_16c} :catch_16c

    :catch_16c
    move-exception v4

    move-object/from16 v3, v22

    :cond_16f
    :goto_16f
    if-eqz v3, :cond_25f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v0, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v16, v0

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-eqz v4, :cond_238

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v4, :cond_1ee

    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " that is not exported from uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not exported from uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_89

    :cond_1ee
    const-string v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " from pid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", uid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " requires "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_89

    :cond_238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p3

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_255

    const/4 v4, 0x0

    goto/16 :goto_89

    :cond_255
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v9}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_89

    :cond_25f
    const/4 v4, 0x0

    goto/16 :goto_89

    :catch_262
    move-exception v4

    goto/16 :goto_16f

    :cond_265
    move-object/from16 v3, v22

    goto/16 :goto_16f

    :cond_269
    move-object/from16 v3, v22

    goto/16 :goto_2f
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .registers 26
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_2a7

    const-wide/16 v8, 0x1388

    const-wide/32 v14, 0xea60

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_cf

    add-int/lit8 v7, v3, -0x1

    :goto_2e
    if-ltz v7, :cond_c6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_4c

    :cond_49
    :goto_49
    add-int/lit8 v7, v7, -0x1

    goto :goto_2e

    :cond_4c
    if-eqz p2, :cond_6a

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_96

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_96

    :cond_6a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    move-wide/from16 v19, v0

    sub-long v5, v17, v19

    const-wide/16 v17, 0x2

    mul-long v5, v5, v17

    cmp-long v17, v8, v5

    if-gez v17, :cond_90

    move-wide v8, v5

    :cond_90
    cmp-long v17, v14, v5

    if-gez v17, :cond_49

    move-wide v14, v5

    goto :goto_49

    :cond_96
    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Canceling start item "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_49

    :cond_c6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :cond_cf
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_23f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    :cond_fb
    :goto_fb
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    add-long v17, v17, v10

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :cond_109
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    :goto_116
    if-ltz v7, :cond_16b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p1

    if-eq v12, v0, :cond_2a3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2710

    sub-long v19, v19, v21

    cmp-long v17, v17, v19

    if-ltz v17, :cond_2a3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2710

    add-long v19, v19, v21

    cmp-long v17, v17, v19

    if-gez v17, :cond_2a3

    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x2710

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    sub-long v17, v17, v10

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const/4 v13, 0x1

    :cond_16b
    if-nez v13, :cond_109

    :goto_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_192

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_192
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Scheduling restart of crashed service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x7553

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v4

    :cond_23f
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v17, v0

    add-long v17, v17, v14

    cmp-long v17, v10, v17

    if-lez v17, :cond_259

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_fb

    :cond_259
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_283

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x2

    div-long v19, v8, v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_fb

    :cond_283
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x4

    mul-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v8

    if-gez v17, :cond_fb

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_fb

    :cond_2a3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_116

    :cond_2a7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto/16 :goto_16d
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 14
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z
    .param p3    # Z

    const/4 v9, 0x1

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    :goto_a
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :try_start_12
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v0, :cond_21

    if-gt v6, v9, :cond_a

    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    iget-object v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    :cond_41
    const-string v0, "start"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    if-nez p3, :cond_50

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    :cond_50
    const/4 v4, 0x0

    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v0, v9, :cond_57

    or-int/lit8 v4, v4, 0x2

    :cond_57
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v0, :cond_5d

    or-int/lit8 v4, v4, 0x1

    :cond_5d
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v2, v8, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v3, v8, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v5, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6b} :catch_6e

    goto :goto_a

    :catch_6c
    move-exception v7

    goto :goto_9

    :catch_6e
    move-exception v7

    const-string v0, "ActivityManager"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 10
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Z
    .param p3    # Z

    const/4 v5, 0x0

    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v1, :cond_63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_42

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2f
    :goto_2f
    if-eqz p2, :cond_3b

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_3b
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    :cond_42
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v1, :cond_63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    if-eqz p3, :cond_63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v1, p1, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    :cond_63
    return-void

    :cond_64
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_72
    if-ltz v0, :cond_2f

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v1, :cond_88

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    goto :goto_2f

    :cond_88
    add-int/lit8 v0, v0, -0x1

    goto :goto_72
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1    # Lcom/android/server/am/ServiceRecord;

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    :cond_1c
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    return-void
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1    # Lcom/android/server/am/ServiceRecord;

    const/4 v4, 0x0

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    :goto_8
    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_33

    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    :cond_2d
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_8

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z
    .registers 6
    .param p1    # Lcom/android/server/am/ServiceRecord;

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 7
    .param p1    # Lcom/android/server/am/ProcessRecord;
    .param p2    # Z

    const/4 v0, 0x0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_18

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    :cond_18
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eq v0, v3, :cond_25

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz p2, :cond_25

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_25
    return-void

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 11
    .param p1    # Lcom/android/server/am/ProcessRecord;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_69

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_b
    :try_start_b
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_69

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_34

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_31

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_34
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4b} :catch_4d

    const/4 v1, 0x1

    goto :goto_31

    :catch_4d
    move-exception v2

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in new application when starting service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2

    :cond_69
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ad

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_73
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_ad

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v5, :cond_9a

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_97

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_9a
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_97

    :cond_ad
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .registers 30
    .param p1    # Landroid/app/IApplicationThread;
    .param p2    # Landroid/os/IBinder;
    .param p3    # Landroid/content/Intent;
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/app/IServiceConnection;
    .param p6    # I
    .param p7    # I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    if-nez v12, :cond_41

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when binding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_41
    const/4 v10, 0x0

    if-eqz p2, :cond_66

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_66

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding with unknown activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_65
    return v4

    :cond_66
    const/4 v14, 0x0

    const/4 v13, 0x0

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_8d

    :try_start_70
    const-string v4, "android.intent.extra.client_intent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/PendingIntent;

    move-object v13, v0
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_7c} :catch_243

    :goto_7c
    if-eqz v13, :cond_8d

    const-string v4, "android.intent.extra.client_label"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_8d

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p3

    :cond_8d
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v4, :cond_ab

    const/4 v9, 0x1

    :goto_92
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v19

    if-nez v19, :cond_ad

    const/4 v4, 0x0

    goto :goto_65

    :cond_ab
    const/4 v9, 0x0

    goto :goto_92

    :cond_ad
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v4, :cond_b5

    const/4 v4, -0x1

    goto :goto_65

    :cond_b5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :try_start_bf
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v4

    if-eqz v4, :cond_c9

    :cond_c9
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_f5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    if-nez v4, :cond_f5

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v21

    if-eqz v21, :cond_f5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    :cond_f5
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v3

    new-instance v2, Lcom/android/server/am/ConnectionRecord;

    move-object v4, v10

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v14

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_125

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_125
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_13f

    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-nez v4, :cond_13a

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v10, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    :cond_13a
    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13f
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_151

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    :cond_151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_169

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_169
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_18d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v9, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;
    :try_end_184
    .catchall {:try_start_bf .. :try_end_184} :catchall_22d

    move-result-object v4

    if-eqz v4, :cond_18d

    const/4 v4, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_65

    :cond_18d
    :try_start_18d
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_19e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    :cond_19e
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_232

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_1a8
    .catchall {:try_start_18d .. :try_end_1a8} :catchall_22d

    if-eqz v4, :cond_232

    :try_start_1aa
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v4, v5, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b7} :catch_1e7
    .catchall {:try_start_1aa .. :try_end_1b7} :catchall_22d

    :goto_1b7
    :try_start_1b7
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d2

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v4, :cond_1d2

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v9, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    :cond_1d2
    :goto_1d2
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1e1
    .catchall {:try_start_1b7 .. :try_end_1e1} :catchall_22d

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    goto/16 :goto_65

    :catch_1e7
    move-exception v16

    :try_start_1e8
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure sending service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22c
    .catchall {:try_start_1e8 .. :try_end_22c} :catchall_22d

    goto :goto_1b7

    :catchall_22d
    move-exception v4

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_232
    :try_start_232
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v4, :cond_1d2

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4, v9, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_242
    .catchall {:try_start_232 .. :try_end_242} :catchall_22d

    goto :goto_1d2

    :catch_243
    move-exception v4

    goto/16 :goto_7c
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 14
    .param p1    # Lcom/android/server/am/TaskRecord;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/content/Intent;

    const/4 v2, 0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_2b

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_2b
    const/4 v7, 0x0

    :goto_2c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_89

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_67

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6a

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": remove task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_67
    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_6a
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_67

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_67

    :cond_89
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 29
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # I
    .param p6    # Z

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v21

    const-string v2, "all"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move-object/from16 v10, v21

    array-length v14, v10

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v14, :cond_d0

    aget v20, v10, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v19, :cond_31

    :cond_2e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_31
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    const/4 v12, 0x0

    :goto_36
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_2e

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_36

    :cond_4c
    if-eqz p3, :cond_7a

    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_bd

    move-result-object v11

    :goto_52
    const/16 v16, 0x0

    if-nez v11, :cond_61

    const/16 v2, 0x10

    :try_start_58
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5d} :catch_103
    .catchall {:try_start_58 .. :try_end_5d} :catchall_bd

    move-result v16

    const/16 p3, 0x0

    const/4 v11, 0x0

    :cond_61
    :goto_61
    move-object/from16 v10, v21

    :try_start_63
    array-length v14, v10

    const/4 v13, 0x0

    :goto_65
    if-ge v13, v14, :cond_d0

    aget v20, v10, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v19, :cond_7c

    :cond_77
    add-int/lit8 v13, v13, 0x1

    goto :goto_65

    :cond_7a
    const/4 v11, 0x0

    goto :goto_52

    :cond_7c
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    const/4 v12, 0x0

    :goto_81
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_77

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    if-eqz v11, :cond_a3

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    :goto_a0
    add-int/lit8 v12, v12, 0x1

    goto :goto_81

    :cond_a3
    if-eqz p3, :cond_c0

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :catchall_bd
    move-exception v2

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_63 .. :try_end_bf} :catchall_bd

    throw v2

    :cond_c0
    :try_start_c0
    invoke-static/range {v17 .. v17}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_a0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_c0 .. :try_end_d1} :catchall_bd

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_d9

    const/4 v2, 0x0

    :goto_d8
    return v2

    :cond_d9
    const/4 v15, 0x0

    const/4 v12, 0x0

    :goto_db
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_101

    if-eqz v15, :cond_e6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_e6
    const/4 v15, 0x1

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_db

    :cond_101
    const/4 v2, 0x1

    goto :goto_d8

    :catch_103
    move-exception v2

    goto/16 :goto_61
.end method

.method dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 43
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;
    .param p4    # I
    .param p5    # Z
    .param p6    # Z
    .param p7    # Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v21, 0x0

    new-instance v16, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    const-string v30, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v29

    move-object/from16 v6, v29

    array-length v15, v6

    const/4 v13, 0x0

    :goto_29
    if-ge v13, v15, :cond_277

    aget v28, v6, v13

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v26

    const/16 v20, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    if-lez v30, :cond_2c5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const/16 v17, 0x0

    const/16 v25, 0x0

    :goto_4b
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_2c3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_80

    :cond_7d
    :goto_7d
    add-int/lit8 v25, v25, 0x1

    goto :goto_4b

    :cond_80
    if-eqz p7, :cond_98

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7d

    :cond_98
    if-nez v20, :cond_c5

    if-eqz v21, :cond_9f

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_9f
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "  User "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " active services:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_c5
    const/16 v21, 0x1

    if-eqz v17, :cond_cc

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_cc
    const-string v30, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p5, :cond_14e

    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/16 v17, 0x1

    :cond_eb
    if-eqz p6, :cond_7d

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7d

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7d

    const-string v30, "    Client:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_10f} :catch_26b

    :try_start_10f
    new-instance v27, Lcom/android/internal/os/TransferPipe;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_114} :catch_24c
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_114} :catch_2b7
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_114} :catch_26b

    :try_start_114
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v30, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const-string v30, "      "

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    const-wide/16 v30, 0x7d0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_147
    .catchall {:try_start_114 .. :try_end_147} :catchall_247

    :try_start_147
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_24c
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_14a} :catch_2b7
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_26b

    :goto_14a
    const/16 v17, 0x1

    goto/16 :goto_7d

    :cond_14e
    :try_start_14e
    const-string v30, "    app="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v30, "    created="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v18

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v30, " started="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v30, v0

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v30, " connections="

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    if-lez v30, :cond_eb

    const-string v30, "    Connections:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1c2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_eb

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const/4 v12, 0x0

    :goto_1df
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_243

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    const-string v30, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v30 .. v34}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v30, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    if-eqz v22, :cond_240

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v30

    :goto_236
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1df

    :cond_240
    const-string v30, "null"
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_242} :catch_26b

    goto :goto_236

    :cond_243
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1c2

    :catchall_247
    move-exception v30

    :try_start_248
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v30
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24c} :catch_24c
    .catch Landroid/os/RemoteException; {:try_start_248 .. :try_end_24c} :catch_2b7
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_24c} :catch_26b

    :catch_24c
    move-exception v11

    :try_start_24d
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "      Failure while dumping the service: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_269} :catch_26b

    goto/16 :goto_14a

    :catch_26b
    move-exception v11

    const-string v30, "ActivityManager"

    const-string v31, "Exception in dumpServicesLocked"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_434

    const/16 v20, 0x0

    const/4 v12, 0x0

    :goto_286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_432

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_3e7

    :cond_2b4
    :goto_2b4
    add-int/lit8 v12, v12, 0x1

    goto :goto_286

    :catch_2b7
    move-exception v11

    :try_start_2b8
    const-string v30, "      Got a RemoteException while dumping the service"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14a

    :cond_2c3
    or-int v17, v17, v20

    :cond_2c5
    const/16 v20, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2d3
    move/from16 v0, v25

    if-ge v0, v5, :cond_354

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_2fc

    :cond_2f9
    :goto_2f9
    add-int/lit8 v25, v25, 0x1

    goto :goto_2d3

    :cond_2fc
    if-eqz p7, :cond_314

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2f9

    :cond_314
    if-nez v20, :cond_341

    if-eqz v21, :cond_31b

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_31b
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "  User "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " delayed start services:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_341
    const/16 v21, 0x1

    const-string v30, "  * Delayed start "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2f9

    :cond_354
    const/16 v20, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_362
    move/from16 v0, v25

    if-ge v0, v5, :cond_3e3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_38b

    :cond_388
    :goto_388
    add-int/lit8 v25, v25, 0x1

    goto :goto_362

    :cond_38b
    if-eqz p7, :cond_3a3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_388

    :cond_3a3
    if-nez v20, :cond_3d0

    if-eqz v21, :cond_3aa

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_3aa
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "  User "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " starting in background:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_3d0
    const/16 v21, 0x1

    const-string v30, "  * Starting bg "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3e2
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_3e2} :catch_26b

    goto :goto_388

    :cond_3e3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_29

    :cond_3e7
    if-eqz p7, :cond_3ff

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b4

    :cond_3ff
    const/16 v21, 0x1

    if-nez v20, :cond_415

    if-eqz v17, :cond_408

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_408
    const/16 v17, 0x1

    const-string v30, "  Pending services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_415
    const-string v30, "  * Pending "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_2b4

    :cond_432
    const/16 v17, 0x1

    :cond_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_4c0

    const/16 v20, 0x0

    const/4 v12, 0x0

    :goto_443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_4be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_474

    :cond_471
    :goto_471
    add-int/lit8 v12, v12, 0x1

    goto :goto_443

    :cond_474
    if-eqz p7, :cond_48c

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_471

    :cond_48c
    const/16 v21, 0x1

    if-nez v20, :cond_4a2

    if-eqz v17, :cond_495

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_495
    const/16 v17, 0x1

    const-string v30, "  Restarting services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_4a2
    const-string v30, "  * Restarting "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_471

    :cond_4be
    const/16 v17, 0x1

    :cond_4c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_54c

    const/16 v20, 0x0

    const/4 v12, 0x0

    :goto_4cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_54a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_500

    :cond_4fd
    :goto_4fd
    add-int/lit8 v12, v12, 0x1

    goto :goto_4cf

    :cond_500
    if-eqz p7, :cond_518

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4fd

    :cond_518
    const/16 v21, 0x1

    if-nez v20, :cond_52e

    if-eqz v17, :cond_521

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_521
    const/16 v17, 0x1

    const-string v30, "  Destroying services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_52e
    const-string v30, "  * Destroy "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v30, "    "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_4fd

    :cond_54a
    const/16 v17, 0x1

    :cond_54c
    if-eqz p5, :cond_607

    const/16 v20, 0x0

    const/4 v14, 0x0

    :goto_551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v14, v0, :cond_607

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    const/4 v12, 0x0

    :goto_56e
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_603

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v30, v0

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_5a7

    :cond_5a4
    :goto_5a4
    add-int/lit8 v12, v12, 0x1

    goto :goto_56e

    :cond_5a7
    if-eqz p7, :cond_5d5

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5a4

    iget-object v0, v10, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5a4

    :cond_5d5
    const/16 v21, 0x1

    if-nez v20, :cond_5eb

    if-eqz v17, :cond_5de

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_5de
    const/16 v17, 0x1

    const-string v30, "  Connection bindings to services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, 0x1

    :cond_5eb
    const-string v30, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v30, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5a4

    :cond_603
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_551

    :cond_607
    if-nez v21, :cond_612

    const-string v30, "  (nothing)"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_612
    return-void
.end method

.method forceStopLocked(Ljava/lang/String;IZZ)Z
    .registers 16
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2f

    const/4 v9, 0x0

    :goto_a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_44

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectForceStopServicesLocked(Ljava/lang/String;IZZLandroid/util/ArrayMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v8, v0

    if-nez p4, :cond_2c

    if-eqz v8, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v10, :cond_44

    iget-object v5, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectForceStopServicesLocked(Ljava/lang/String;IZZLandroid/util/ArrayMap;Ljava/util/ArrayList;)Z

    move-result v8

    :cond_44
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_49
    if-ge v9, v7, :cond_57

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    :cond_57
    move v0, v8

    goto :goto_2b
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 8
    .param p1    # Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActiveServices;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_16
    if-ltz v1, :cond_40

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    :goto_39
    return-object v5

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_40
    const/4 v5, 0x0

    goto :goto_39
.end method

.method getRunningServiceInfoLocked(II)Ljava/util/List;
    .registers 17
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    const-string v12, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v12, v9}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_70

    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v11

    const/4 v8, 0x0

    :goto_1c
    array-length v12, v11

    if-ge v8, v12, :cond_4b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_4b

    aget v12, v11, v8

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_48

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_48

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_be

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_be

    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_70
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActiveServices;->getServices(I)Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_79
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v1, v12, :cond_95

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_95

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_95
    const/4 v1, 0x0

    :goto_96
    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_be

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, p1, :cond_be

    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget v12, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v12, v10, :cond_bb

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    iget-wide v12, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catchall {:try_start_d .. :try_end_bb} :catchall_c2

    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_be
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_c2
    move-exception v12

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .registers 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServices(I)Landroid/util/ArrayMap;
    .registers 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServices(I)Z
    .registers 6
    .param p1    # I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 15
    .param p1    # Lcom/android/server/am/ProcessRecord;
    .param p2    # Z

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_8
    if-ltz v3, :cond_19

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, p1, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_19
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_26
    if-ltz v3, :cond_115

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v8

    monitor-enter v8

    :try_start_37
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    monitor-exit v8
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_70

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    :cond_51
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_59
    if-ltz v1, :cond_73

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v7, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_59

    :catchall_70
    move-exception v7

    :try_start_71
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v7

    :cond_73
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_d5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_d5

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service crashed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " times, stopping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x7552

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_d1
    :goto_d1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_26

    :cond_d5
    if-nez p2, :cond_db

    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_d1

    :cond_db
    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v2

    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v7, :cond_d1

    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v7, :cond_ea

    if-eqz v2, :cond_d1

    :cond_ea
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_d1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v7, :cond_10b

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    :cond_10b
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v7

    if-nez v7, :cond_d1

    invoke-direct {p0, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_d1

    :cond_115
    if-nez p2, :cond_11c

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    :cond_11c
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_122
    :goto_122
    if-lez v3, :cond_13b

    add-int/lit8 v3, v3, -0x1

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, p1, :cond_122

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_122

    :cond_13b
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .registers 9
    .param p1    # Lcom/android/server/am/ServiceRecord;

    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_13

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    :cond_13
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_43

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_43
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_4d

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_4d
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5f

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_5f

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_5f
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_6f

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v5, :cond_6f

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_6f
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_77
    if-ltz v1, :cond_a0

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_a1

    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    :cond_a0
    return-object v4

    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :cond_a4
    add-int/lit8 v1, v1, -0x1

    goto :goto_77
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 14
    .param p1    # Landroid/content/Intent;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_73

    iget-object v0, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_61

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    iget-object v0, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v1, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/IntentBindRecord;

    if-eqz v8, :cond_73

    iget-object v10, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    :cond_73
    return-object v10
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5
    .param p1    # Lcom/android/server/am/ServiceRecord;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    goto :goto_8
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1    # Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_23

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_23
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_4c

    :cond_27
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing bringing down service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4f
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 16
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    if-eqz p1, :cond_ab

    :try_start_6
    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    if-eqz v0, :cond_a1

    iget-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v9, :cond_a1

    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_29
    if-ltz v3, :cond_a1

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_9e

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v9, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5, v9}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_99

    move-result v9

    if-nez v9, :cond_4f

    :goto_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_4f
    :try_start_4f
    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v9, v10, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_57
    .catchall {:try_start_4f .. :try_end_56} :catchall_99

    goto :goto_4c

    :catch_57
    move-exception v4

    :try_start_58
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_58 .. :try_end_98} :catchall_99

    goto :goto_4c

    :catchall_99
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_9e
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    :cond_a1
    :try_start_a1
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_99

    :cond_ab
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 15
    .param p1    # Lcom/android/server/am/ConnectionRecord;
    .param p2    # Lcom/android/server/am/ProcessRecord;
    .param p3    # Lcom/android/server/am/ActivityRecord;

    const/4 v10, 0x0

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_23

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_3d

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p3, :cond_3d

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v6, :cond_3d

    iget-object v6, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eq v6, p2, :cond_53

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_53

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    :cond_53
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_6b

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6b

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_7c

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    iget-boolean v6, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v6, :cond_e5

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_c0

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_c0

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-nez v6, :cond_c0

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v6, :cond_c0

    const/4 v6, 0x0

    :try_start_9b
    const-string v7, "unbind"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c0} :catch_e6

    :cond_c0
    :goto_c0
    iget v6, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e5

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    if-nez v4, :cond_e1

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_e1

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    :cond_e1
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    :cond_e5
    return-void

    :catch_e6
    move-exception v3

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unbinding service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_c0
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1    # Lcom/android/server/am/ProcessRecord;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v3, :cond_2c

    const-wide/16 v3, 0x4e20

    add-long/2addr v3, v1

    :goto_28
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_c

    :cond_2c
    const-wide/32 v3, 0x30d40

    add-long/2addr v3, v1

    goto :goto_28
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .registers 12
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_5f

    if-ne p2, v5, :cond_33

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    sparse-switch p4, :sswitch_data_7c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown service start result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_2a
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    :cond_2f
    :goto_2f
    if-nez p4, :cond_33

    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3d
    return-void

    :sswitch_3e
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v4

    if-ne v4, p3, :cond_2f

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_2f

    :sswitch_4a
    invoke-virtual {p1, p3, v6}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v3

    if-eqz v3, :cond_2f

    iput v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    iget v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_2f

    :sswitch_5b
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_2f

    :cond_5f
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done executing unknown service from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_2a
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_4a
        0x3e8 -> :sswitch_5b
    .end sparse-switch
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .registers 16
    .param p1    # Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_11

    :cond_f
    monitor-exit p0

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_7f

    const/16 v0, 0x4e20

    :goto_1b
    int-to-long v0, v0

    sub-long v7, v3, v0

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :goto_29
    if-ltz v6, :cond_3a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_83

    move-object v13, v12

    :cond_3a
    if-eqz v13, :cond_8e

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout executing service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_a9

    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_10

    :cond_7f
    const v0, 0x30d40

    goto :goto_1b

    :cond_83
    :try_start_83
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_8b

    iget-wide v10, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    :cond_8b
    add-int/lit8 v6, v6, -0x1

    goto :goto_29

    :cond_8e
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iput-object p1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_ac

    const-wide/16 v0, 0x4e20

    add-long/2addr v0, v10

    :goto_a5
    invoke-virtual {v3, v9, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_73

    :catchall_a9
    move-exception v0

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_83 .. :try_end_ab} :catchall_a9

    throw v0

    :cond_ac
    const-wide/32 v0, 0x30d40

    add-long/2addr v0, v10

    goto :goto_a5
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .registers 14
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;
    .param p3    # I
    .param p4    # Landroid/app/Notification;
    .param p5    # Z

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    if-eqz v2, :cond_49

    if-eqz p3, :cond_4d

    if-nez p4, :cond_1f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null notification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_1f
    :try_start_1f
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v4, p3, :cond_28

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    :cond_28
    iget v4, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p4, Landroid/app/Notification;->flags:I

    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_40

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    :cond_40
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_1a

    :cond_49
    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4d
    :try_start_4d
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_67

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    :cond_67
    if-eqz p5, :cond_49

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_72
    .catchall {:try_start_4d .. :try_end_72} :catchall_1a

    goto :goto_49
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .registers 13
    .param p1    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2    # Landroid/content/Intent;
    .param p3    # Lcom/android/server/am/ServiceRecord;
    .param p4    # Z
    .param p5    # Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    iget-wide v5, p3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    :cond_15
    iput-boolean v3, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    iget-object v4, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4

    :try_start_1e
    iget-object v5, p3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_36

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-direct {p0, p3, v4, p4, v3}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "!!"

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-object v3

    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v3

    :cond_39
    iget-boolean v4, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_5f

    if-eqz p5, :cond_5f

    iget-object v4, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5d

    :goto_47
    iget-object v3, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3a98

    add-long/2addr v3, v5

    iput-wide v3, p3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStarts()V

    :cond_5a
    :goto_5a
    iget-object v3, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto :goto_35

    :cond_5d
    move v1, v3

    goto :goto_47

    :cond_5f
    if-eqz p4, :cond_5a

    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_5a
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .registers 25
    .param p1    # Landroid/app/IApplicationThread;
    .param p2    # Landroid/content/Intent;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I

    if-eqz p1, :cond_5f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    if-nez v15, :cond_43

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    iget v1, v15, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_5d

    const/4 v8, 0x1

    :goto_48
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v17

    if-nez v17, :cond_61

    const/4 v1, 0x0

    :goto_5c
    return-object v1

    :cond_5d
    const/4 v8, 0x0

    goto :goto_48

    :cond_5f
    const/4 v8, 0x1

    goto :goto_48

    :cond_61
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v1, :cond_7d

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "!"

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v1, :cond_7a

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    :goto_75
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_5c

    :cond_7a
    const-string v1, "private to package"

    goto :goto_75

    :cond_7d
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/4 v6, 0x0

    move/from16 v2, p5

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v1

    if-eqz v1, :cond_9c

    :cond_9c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    iget-object v7, v12, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v3, 0x0

    invoke-virtual {v12}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v4

    move-object v2, v12

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMap(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v10

    const/4 v14, 0x0

    if-nez v8, :cond_129

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_129

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v2, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_129

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    if-eqz v16, :cond_f0

    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_134

    :cond_f0
    iget-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_f8

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_5c

    :cond_f8
    iget-object v1, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v1, v2, :cond_128

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying start of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->delayed:Z

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_5c

    :cond_128
    const/4 v14, 0x1

    :cond_129
    :goto_129
    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v1

    goto/16 :goto_5c

    :cond_134
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_129

    const/4 v14, 0x1

    goto :goto_129
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 17
    .param p1    # Landroid/app/IApplicationThread;
    .param p2    # Landroid/content/Intent;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    if-eqz p1, :cond_3b

    if-nez v8, :cond_3b

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v11

    if-eqz v11, :cond_69

    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_67

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_58
    iget-object v0, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_62

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    :goto_61
    return v0

    :catchall_62
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_67
    const/4 v0, -0x1

    goto :goto_61

    :cond_69
    const/4 v0, 0x0

    goto :goto_61
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 14
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;
    .param p3    # I

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    if-eqz v3, :cond_2e

    if-ltz p3, :cond_65

    invoke-virtual {v3, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v4

    if-eqz v4, :cond_28

    :cond_13
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_28

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    if-ne v0, v4, :cond_13

    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v6

    if-eq v6, p3, :cond_2f

    :cond_2e
    :goto_2e
    return v5

    :cond_2f
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_65

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken startId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is last, but have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remaining args"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    :try_start_6c
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    monitor-exit v6
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_97

    iput-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    if-eqz v6, :cond_89

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/ProcessStats$ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    :cond_89
    iput-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, v3, v5, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    goto :goto_2e

    :catchall_97
    move-exception v5

    :try_start_98
    monitor-exit v6
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v5
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .registers 13
    .param p1    # Lcom/android/server/am/ServiceRecord;
    .param p2    # Landroid/content/Intent;
    .param p3    # Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz p1, :cond_49

    :try_start_6
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v0, :cond_45

    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_50

    if-nez v4, :cond_50

    const/4 v5, 0x0

    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_2e
    if-ltz v3, :cond_41

    iget-object v8, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    iget-object v1, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4d

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v8, :cond_4d

    const/4 v5, 0x1

    :cond_41
    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v5, v8}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    :cond_45
    :goto_45
    const/4 v8, 0x0

    invoke-direct {p0, p1, v4, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_54

    :cond_49
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    :cond_50
    const/4 v8, 0x1

    :try_start_51
    iput-boolean v8, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_54

    goto :goto_45

    :catchall_54
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .registers 11
    .param p1    # Landroid/app/IServiceConnection;

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2c

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbind failed: could not find connection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return v5

    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5b

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_56

    goto :goto_30

    :catchall_56
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    goto :goto_2b
.end method
