.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final DB:Z = false

.field static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_WAIT:I = 0x7530

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mAllowRestart:Z

.field mBattery:Lcom/android/server/BatteryService;

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mPower:Lcom/android/server/power/PowerManagerService;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/mediaserver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "foreground thread"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v3, "main thread"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "ui thread"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "i/o thread"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    const/4 v1, 0x0

    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-object v1

    :cond_10
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isCompletedLocked()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private haveAllCheckersCompletedLocked()Z
    .registers 4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->isCompletedLocked()Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x0

    :goto_18
    return v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1c
    const/4 v2, 0x1

    goto :goto_18
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1    # Lcom/android/server/Watchdog$Monitor;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    return-void
.end method

.method public addThread(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/os/Handler;
    .param p2    # Ljava/lang/String;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 10
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/BatteryService;
    .param p3    # Lcom/android/server/power/PowerManagerService;
    .param p4    # Lcom/android/server/AlarmManagerService;
    .param p5    # Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    monitor-enter p0

    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v4, p1, v4}, Lcom/android/server/power/PowerManagerService;->reboot(ZLjava/lang/String;Z)V

    return-void
.end method

.method public run()V
    .registers 31

    const/16 v25, 0x0

    :goto_2
    monitor-enter p0

    const-wide/16 v23, 0x7530

    if-nez v25, :cond_2a

    const/4 v12, 0x0

    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v11}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_4f

    move-result-wide v19

    :goto_2e
    const-wide/16 v26, 0x0

    cmp-long v26, v23, v26

    if-lez v26, :cond_52

    :try_start_34
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3b} :catch_46
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4f

    :goto_3b
    const-wide/16 v26, 0x7530

    :try_start_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v19

    sub-long v23, v26, v28

    goto :goto_2e

    :catch_46
    move-exception v9

    const-string v26, "Watchdog"

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    :catchall_4f
    move-exception v26

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_4f

    throw v26

    :cond_52
    :try_start_52
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->haveAllCheckersCompletedLocked()Z

    move-result v26

    if-eqz v26, :cond_5c

    const/16 v25, 0x0

    monitor-exit p0

    goto :goto_2

    :cond_5c
    if-nez v25, :cond_88

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget-object v29, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    const/16 v25, 0x1

    monitor-exit p0

    goto/16 :goto_2

    :cond_88
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_52 .. :try_end_97} :catchall_4f

    const/16 v26, 0xaf2

    move/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v26, v0

    if-lez v26, :cond_c9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    if-nez v25, :cond_13e

    const/16 v26, 0x1

    :goto_cd
    const/16 v27, 0x0

    const/16 v28, 0x0

    sget-object v29, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    const-wide/16 v26, 0x7d0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    :try_start_e7
    new-instance v22, Ljava/io/FileWriter;

    const-string v26, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string v26, "w"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileWriter;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_fe} :catch_141

    :goto_fe
    new-instance v8, Lcom/android/server/Watchdog$1;

    const-string v26, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    const-wide/16 v26, 0x7d0

    :try_start_112
    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_117
    .catch Ljava/lang/InterruptedException; {:try_start_112 .. :try_end_117} :catch_210

    :goto_117
    monitor-enter p0

    :try_start_118
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0
    :try_end_11d
    .catchall {:try_start_118 .. :try_end_11d} :catchall_153

    if-eqz v7, :cond_157

    const-string v26, "Watchdog"

    const-string v27, "Reporting stuck state to activity controller"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_126
    const-string v26, "Service dumps disabled due to hung system process."

    invoke-static/range {v26 .. v26}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_157

    const-string v26, "Watchdog"

    const-string v27, "Activity controller requested to coninue to wait"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_13a} :catch_156

    const/16 v25, 0x0

    goto/16 :goto_2

    :cond_13e
    const/16 v26, 0x0

    goto :goto_cd

    :catch_141
    move-exception v9

    const-string v26, "Watchdog"

    const-string v27, "Failed to write to /proc/sysrq-trigger"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "Watchdog"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    :catchall_153
    move-exception v26

    :try_start_154
    monitor-exit p0
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    throw v26

    :catch_156
    move-exception v26

    :cond_157
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v26

    if-eqz v26, :cond_168

    const-string v26, "Watchdog"

    const-string v27, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_164
    const/16 v25, 0x0

    goto/16 :goto_2

    :cond_168
    if-nez v4, :cond_172

    const-string v26, "Watchdog"

    const-string v27, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    :cond_172
    const-string v26, "Watchdog"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_18f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_1fb

    const-string v27, "Watchdog"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " stack trace:"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    move-object/from16 v5, v18

    array-length v14, v5

    const/4 v13, 0x0

    :goto_1d7
    if-ge v13, v14, :cond_1f8

    aget-object v10, v5, v13

    const-string v26, "Watchdog"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "    at "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1d7

    :cond_1f8
    add-int/lit8 v12, v12, 0x1

    goto :goto_18f

    :cond_1fb
    const-string v26, "Watchdog"

    const-string v27, "*** GOODBYE!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->killProcess(I)V

    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_164

    :catch_210
    move-exception v26

    goto/16 :goto_117
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1    # Landroid/app/IActivityController;

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1    # Z

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
