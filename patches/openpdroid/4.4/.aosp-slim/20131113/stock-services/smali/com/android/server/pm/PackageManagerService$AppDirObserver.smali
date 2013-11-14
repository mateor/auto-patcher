.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsPrivileged:Z

.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZ)V
    .registers 6
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z
    .param p5    # Z

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 27
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v22, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9

    const/16 v19, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_29

    :try_start_16
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_39

    :try_start_23
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_15c

    move-result-object v19

    move-object/from16 v3, v18

    :cond_29
    :try_start_29
    # invokes: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$2000(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    monitor-exit v9

    :cond_30
    :goto_30
    return-void

    :cond_31
    # invokes: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$2100(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    monitor-exit v9

    goto :goto_30

    :catchall_39
    move-exception v2

    :goto_3a
    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_39

    throw v2

    :cond_3c
    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_39

    :try_start_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    if-eqz v20, :cond_80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v0

    if-eqz v21, :cond_149

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v10

    :cond_80
    :goto_80
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    monitor-exit v5
    :try_end_87
    .catchall {:try_start_47 .. :try_end_87} :catchall_151

    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x248

    if-eqz v2, :cond_a5

    if-eqz v21, :cond_a5

    :try_start_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v22, v0

    :cond_a5
    move/from16 v0, p1

    and-int/lit16 v2, v0, 0x88

    if-eqz v2, :cond_100

    if-nez v20, :cond_100

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v2, :cond_be

    or-int/lit8 v4, v4, 0x41

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsPrivileged:Z

    if-eqz v2, :cond_be

    or-int/lit16 v4, v4, 0x80

    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    if-eqz v20, :cond_100

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_d7
    .catchall {:try_start_8f .. :try_end_d7} :catchall_39

    :try_start_d7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_154

    const/4 v2, 0x1

    :goto_ea
    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v6, v8, v0, v2}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    monitor-exit v5
    :try_end_f0
    .catchall {:try_start_d7 .. :try_end_f0} :catchall_156

    :try_start_f0
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    :cond_100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_107
    .catchall {:try_start_f0 .. :try_end_107} :catchall_39

    :try_start_107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    monitor-exit v5
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_159

    :try_start_111
    monitor-exit v9
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_39

    if-eqz v23, :cond_130

    new-instance v7, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v22

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v23

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_130
    if-eqz v12, :cond_30

    new-instance v7, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "android.intent.extra.UID"

    move/from16 v0, v17

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "android.intent.action.PACKAGE_ADDED"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_30

    :cond_149
    :try_start_149
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    goto/16 :goto_80

    :catchall_151
    move-exception v2

    monitor-exit v5
    :try_end_153
    .catchall {:try_start_149 .. :try_end_153} :catchall_151

    :try_start_153
    throw v2
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_39

    :cond_154
    const/4 v2, 0x0

    goto :goto_ea

    :catchall_156
    move-exception v2

    :try_start_157
    monitor-exit v5
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    :try_start_158
    throw v2
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_39

    :catchall_159
    move-exception v2

    :try_start_15a
    monitor-exit v5
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    :try_start_15b
    throw v2
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_39

    :catchall_15c
    move-exception v2

    move-object/from16 v3, v18

    goto/16 :goto_3a
.end method
