.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$MoveParams;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cb

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Package;

    if-nez v17, :cond_11e

    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " doesn\'t exist. Aborting move"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x2

    :goto_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_21 .. :try_end_5c} :catchall_1a4

    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_cb

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_72
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_34d

    :try_start_79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Package;

    if-nez v17, :cond_1a7

    const-string v1, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " Package "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " doesn\'t exist. Aborting move"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x2

    :cond_bf
    :goto_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_79 .. :try_end_c0} :catchall_34a

    :try_start_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_34d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    :cond_cb
    const/4 v1, 0x1

    move/from16 v0, v20

    if-eq v0, v1, :cond_35e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_e4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v2, -0x6e

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    :cond_e4
    :goto_e4
    const/4 v1, -0x7

    move/from16 v0, v20

    if-eq v0, v1, :cond_10a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_f0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Package;

    if-eqz v17, :cond_109

    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    :cond_109
    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_f0 .. :try_end_10a} :catchall_37c

    :cond_10a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v15, :cond_11d

    :try_start_112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move/from16 v0, v20

    invoke-interface {v15, v1, v0}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_11d} :catch_37f

    :cond_11d
    :goto_11d
    return-void

    :cond_11e
    :try_start_11e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_180

    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " code path changed from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Aborting move and returning error"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x6

    goto/16 :goto_5b

    :cond_180
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v21, v0

    const/4 v1, 0x0

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v3, v21, v1
    :try_end_18e
    .catchall {:try_start_11e .. :try_end_18e} :catchall_1a4

    :try_start_18e
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_193
    .catchall {:try_start_18e .. :try_end_193} :catchall_389

    :try_start_193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19e
    .catchall {:try_start_193 .. :try_end_19e} :catchall_38e

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    goto/16 :goto_5b

    :catchall_1a4
    move-exception v1

    :goto_1a5
    :try_start_1a5
    monitor-exit v2
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_1a4

    throw v1

    :cond_1a7
    :try_start_1a7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_229

    const-string v1, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " code path changed from "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " to "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, " Aborting move and returning error"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x6

    goto/16 :goto_bf

    :cond_229
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService;->access$500(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-nez v1, :cond_266

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService;->access$600(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-nez v1, :cond_266

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v12}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    :cond_266
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    move-object/from16 v7, v23

    array-length v10, v7

    const/4 v9, 0x0

    :goto_270
    if-ge v9, v10, :cond_28b

    aget v22, v7, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v1, v6, v13, v0}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_288

    const/16 v20, -0x1

    :cond_288
    add-int/lit8 v9, v9, 0x1

    goto :goto_270

    :cond_28b
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_2ab

    move-object/from16 v0, v17

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2ab

    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    const/16 v20, -0x1

    :cond_2ab
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_bf

    move-object/from16 v0, v17

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v11, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v14, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v13, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/pm/PackageSetting;

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_350

    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v24, 0x40000

    or-int v6, v6, v24

    iput v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_31e
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setFlags(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto/16 :goto_bf

    :catchall_34a
    move-exception v1

    monitor-exit v3
    :try_end_34c
    .catchall {:try_start_1a7 .. :try_end_34c} :catchall_34a

    :try_start_34c
    throw v1

    :catchall_34d
    move-exception v1

    monitor-exit v2
    :try_end_34f
    .catchall {:try_start_34c .. :try_end_34f} :catchall_34d

    throw v1

    :cond_350
    :try_start_350
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v24, -0x40001

    and-int v6, v6, v24

    iput v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_35d
    .catchall {:try_start_350 .. :try_end_35d} :catchall_34a

    goto :goto_31e

    :cond_35e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_36c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$12;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    monitor-exit v2

    goto/16 :goto_e4

    :catchall_379
    move-exception v1

    monitor-exit v2
    :try_end_37b
    .catchall {:try_start_36c .. :try_end_37b} :catchall_379

    throw v1

    :catchall_37c
    move-exception v1

    :try_start_37d
    monitor-exit v2
    :try_end_37e
    .catchall {:try_start_37d .. :try_end_37e} :catchall_37c

    throw v1

    :catch_37f
    move-exception v8

    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d

    :catchall_389
    move-exception v1

    move-object/from16 v5, v21

    goto/16 :goto_1a5

    :catchall_38e
    move-exception v1

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    goto/16 :goto_1a5
.end method
