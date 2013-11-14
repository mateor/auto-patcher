.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 32
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_416

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v6, v6, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    # invokes: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v29

    if-nez v29, :cond_55

    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_52

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    :catchall_52
    move-exception v5

    :try_start_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v5

    :cond_55
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_69
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_b1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_83
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BackupManagerService$BackupRequest;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :catchall_97
    move-exception v5

    monitor-exit v6
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_97

    throw v5

    :cond_9a
    :try_start_9a
    const-string v5, "BackupManagerService"

    const-string v7, "clearing pending backups"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    :cond_b1
    monitor-exit v6
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_97

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_dc

    new-instance v22, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    const/16 v5, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :cond_dc
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_ea
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    monitor-exit v6
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_fd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_fd
    move-exception v5

    :try_start_fe
    monitor-exit v6
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v5

    :pswitch_100
    :try_start_100
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-interface {v4}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_109
    .catch Ljava/lang/ClassCastException; {:try_start_100 .. :try_end_109} :catch_10b

    goto/16 :goto_7

    :catch_10b
    move-exception v18

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid backup task in flight, obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_12a
    :try_start_12a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-interface {v4}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->operationComplete()V
    :try_end_133
    .catch Ljava/lang/ClassCastException; {:try_start_12a .. :try_end_133} :catch_135

    goto/16 :goto_7

    :catch_135
    move-exception v18

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid completion in flight, obj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_154
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$FullBackupParams;

    new-instance v4, Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeApks:Z

    move-object/from16 v0, v21

    iget-boolean v9, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeObbs:Z

    move-object/from16 v0, v21

    iget-boolean v10, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeShared:Z

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-boolean v13, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->allApps:Z

    move-object/from16 v0, v21

    iget-boolean v14, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeSystem:Z

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_19d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$RestoreParams;

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v21

    iget v11, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move-object/from16 v0, v21

    iget-boolean v12, v0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    invoke-direct/range {v4 .. v13}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :pswitch_1f7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$FullRestoreParams;

    new-instance v4, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {v4 .. v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_226
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$ClearParams;

    new-instance v5, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_7

    :pswitch_244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_24b
    new-instance v25, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    monitor-exit v6
    :try_end_262
    .catchall {:try_start_24b .. :try_end_262} :catchall_272

    new-instance v5, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v25

    invoke-direct {v5, v6, v0}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_7

    :catchall_272
    move-exception v5

    :try_start_273
    monitor-exit v6
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_272

    throw v5

    :pswitch_275
    const/16 v28, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    :try_start_27f
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    monitor-enter v6
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_28c} :catch_2cd
    .catchall {:try_start_27f .. :try_end_28c} :catchall_328

    :try_start_28c
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    monitor-exit v6
    :try_end_295
    .catchall {:try_start_28c .. :try_end_295} :catchall_2ca

    if-nez v28, :cond_29f

    const/16 v5, 0xb0f

    const/4 v6, 0x0

    :try_start_29a
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_29f} :catch_2cd
    .catchall {:try_start_29a .. :try_end_29f} :catchall_328

    :cond_29f
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v5, :cond_2ae

    :try_start_2a5
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2ae
    .catch Landroid/os/RemoteException; {:try_start_2a5 .. :try_end_2ae} :catch_300
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2ae} :catch_309

    :cond_2ae
    :goto_2ae
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_2ca
    move-exception v5

    :try_start_2cb
    monitor-exit v6
    :try_end_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_2ca

    :try_start_2cc
    throw v5
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2cd} :catch_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_328

    :catch_2cd
    move-exception v18

    :try_start_2ce
    const-string v5, "BackupManagerService"

    const-string v6, "Error from transport getting set list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d5
    .catchall {:try_start_2ce .. :try_end_2d5} :catchall_328

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v5, :cond_2e4

    :try_start_2db
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2e4
    .catch Landroid/os/RemoteException; {:try_start_2db .. :try_end_2e4} :catch_314
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2e4} :catch_31d

    :cond_2e4
    :goto_2e4
    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catch_300
    move-exception v26

    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ae

    :catch_309
    move-exception v18

    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ae

    :catch_314
    move-exception v26

    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e4

    :catch_31d
    move-exception v18

    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e4

    :catchall_328
    move-exception v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v6, :cond_338

    :try_start_32f
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_338
    .catch Landroid/os/RemoteException; {:try_start_32f .. :try_end_338} :catch_353
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_338} :catch_35c

    :cond_338
    :goto_338
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v6, 0x8

    const-wide/32 v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    :catch_353
    move-exception v26

    const-string v6, "BackupManagerService"

    const-string v7, "Unable to report listing to observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_338

    :catch_35c
    move-exception v18

    const-string v6, "BackupManagerService"

    const-string v7, "Restore observer threw"

    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_338

    :pswitch_367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_378
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    monitor-enter v6

    :try_start_37d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v5, :cond_3a9

    const-string v5, "BackupManagerService"

    const-string v7, "Restore session timed out; aborting"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    :cond_3a9
    monitor-exit v6
    :try_end_3aa
    .catchall {:try_start_37d .. :try_end_3aa} :catchall_3f3

    :pswitch_3aa
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_3b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/BackupManagerService$FullParams;

    if-eqz v21, :cond_3f6

    const-string v5, "BackupManagerService"

    const-string v7, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->delete(I)V

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_3e4
    .catchall {:try_start_3b1 .. :try_end_3e4} :catchall_3f0

    if-eqz v5, :cond_3ed

    :try_start_3e6
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v5}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_3ed
    .catch Landroid/os/RemoteException; {:try_start_3e6 .. :try_end_3ed} :catch_413
    .catchall {:try_start_3e6 .. :try_end_3ed} :catchall_3f0

    :cond_3ed
    :goto_3ed
    :try_start_3ed
    monitor-exit v6

    goto/16 :goto_7

    :catchall_3f0
    move-exception v5

    monitor-exit v6
    :try_end_3f2
    .catchall {:try_start_3ed .. :try_end_3f2} :catchall_3f0

    throw v5

    :catchall_3f3
    move-exception v5

    :try_start_3f4
    monitor-exit v6
    :try_end_3f5
    .catchall {:try_start_3f4 .. :try_end_3f5} :catchall_3f3

    throw v5

    :cond_3f6
    :try_start_3f6
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t find params for token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_412
    .catchall {:try_start_3f6 .. :try_end_412} :catchall_3f0

    goto :goto_3ed

    :catch_413
    move-exception v5

    goto :goto_3ed

    nop

    :pswitch_data_416
    .packed-switch 0x1
        :pswitch_8
        :pswitch_154
        :pswitch_19d
        :pswitch_226
        :pswitch_244
        :pswitch_275
        :pswitch_367
        :pswitch_378
        :pswitch_3aa
        :pswitch_1f7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_100
        :pswitch_12a
    .end packed-switch
.end method
