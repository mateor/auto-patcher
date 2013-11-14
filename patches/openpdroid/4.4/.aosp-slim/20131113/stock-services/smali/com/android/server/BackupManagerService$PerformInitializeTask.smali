.class Lcom/android/server/BackupManagerService$PerformInitializeTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformInitializeTask"
.end annotation


# instance fields
.field mQueue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    :try_start_0
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_131

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    # invokes: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v10, v9}, Lcom/android/server/BackupManagerService;->access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v8

    if-nez v8, :cond_42

    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_c2
    .catchall {:try_start_0 .. :try_end_38} :catchall_125

    goto :goto_6

    :catch_39
    move-exception v10

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    :goto_3e
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_42
    :try_start_42
    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xb05

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v7

    if-nez v7, :cond_71

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v7

    :cond_71
    if-nez v7, :cond_d0

    const-string v10, "BackupManagerService"

    const-string v11, "Device init successful"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v5

    long-to-int v4, v10

    const/16 v10, 0xb0b

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    const/16 v10, 0xb09

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v10, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_b6} :catch_39
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_b6} :catch_c2
    .catchall {:try_start_42 .. :try_end_b6} :catchall_125

    :try_start_b6
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v9}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    monitor-exit v11

    goto/16 :goto_6

    :catchall_bf
    move-exception v10

    monitor-exit v11
    :try_end_c1
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw v10
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c2} :catch_39
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c2} :catch_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_125

    :catch_c2
    move-exception v2

    :try_start_c3
    const-string v10, "BackupManagerService"

    const-string v11, "Unexpected error performing init"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_125

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3e

    :cond_d0
    :try_start_d0
    const-string v10, "BackupManagerService"

    const-string v11, "Transport error in initializeDevice()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xb06

    const-string v11, "(initialize)"

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v10, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_e3} :catch_39
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e3} :catch_c2
    .catchall {:try_start_d0 .. :try_end_e3} :catchall_125

    :try_start_e3
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v9}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    monitor-exit v11
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_12e

    :try_start_ea
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v0

    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init failed on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resched in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v0

    iget-object v14, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v14, v14, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_123} :catch_39
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_123} :catch_c2
    .catchall {:try_start_ea .. :try_end_123} :catchall_125

    goto/16 :goto_6

    :catchall_125
    move-exception v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v10

    :catchall_12e
    move-exception v10

    :try_start_12f
    monitor-exit v11
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    :try_start_130
    throw v10
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_131} :catch_39
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_131} :catch_c2
    .catchall {:try_start_130 .. :try_end_131} :catchall_125

    :cond_131
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3e
.end method
