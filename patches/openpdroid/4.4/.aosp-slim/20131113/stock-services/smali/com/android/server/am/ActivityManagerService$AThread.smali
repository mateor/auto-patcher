.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Lcom/android/server/am/ActivityManagerService$1;)V

    monitor-enter p0

    :try_start_12
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$AThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_3b

    monitor-enter p0

    :goto_31
    :try_start_31
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_50

    if-nez v1, :cond_3e

    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_50

    goto :goto_31

    :catch_39
    move-exception v1

    goto :goto_31

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1

    :cond_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_50

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "ActivityManager"

    const-string v2, "Enabled StrictMode logging for AThread\'s Looper"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method
