.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_92

    :goto_7
    return-void

    :pswitch_8
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v1, 0x1

    new-array v15, v1, [J

    :cond_11
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4

    goto :goto_7

    :catchall_2d
    move-exception v1

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_2d

    throw v1

    :cond_30
    :try_start_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    iget v12, v11, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_8e

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v12, v1, :cond_8e

    iget v10, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_48
    add-int/lit8 v8, v8, 0x1

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_2d

    if-eqz v11, :cond_11

    invoke-static {v10, v15}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_58
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_89

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v1, v12, :cond_89

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, v10, :cond_89

    add-int/lit8 v9, v9, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    const/4 v6, 0x1

    iget-object v7, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(JJZLandroid/util/ArrayMap;)V

    iget-wide v4, v11, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_81

    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    :cond_81
    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const/16 v1, 0x9

    if-lt v12, v1, :cond_89

    iput-wide v2, v11, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    :cond_89
    monitor-exit v16

    goto :goto_11

    :catchall_8b
    move-exception v1

    monitor-exit v16
    :try_end_8d
    .catchall {:try_start_58 .. :try_end_8d} :catchall_8b

    throw v1

    :cond_8e
    const/4 v11, 0x0

    const/4 v10, 0x0

    goto :goto_48

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
