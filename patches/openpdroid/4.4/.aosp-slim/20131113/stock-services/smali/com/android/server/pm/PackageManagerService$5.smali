.class Lcom/android/server/pm/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v10, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v5, v10}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$5;->val$currentStatus:I

    iput v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v10, -0x1

    iput v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    const/4 v10, 0x0

    iput-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v10}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    iput-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v10, v8, :cond_43

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_31
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v13, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v11, v12, v13, v5}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    monitor-exit v10
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_aa

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v12, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    :cond_43
    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v10, :cond_ad

    move v7, v8

    :goto_4a
    if-nez v7, :cond_af

    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_af

    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v10, :cond_af

    move v2, v8

    :goto_59
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v10, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v10, :cond_63

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v8, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    :cond_63
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v11, v6, 0x1

    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$5;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v10, v11, v5}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v10, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v10, v8, :cond_96

    if-eqz v2, :cond_96

    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    if-eqz v0, :cond_bb

    :try_start_8d
    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v6}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_96} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_96} :catch_b1

    :cond_96
    :goto_96
    if-nez v2, :cond_a9

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v6, v9}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a9
    return-void

    :catchall_aa
    move-exception v8

    :try_start_ab
    monitor-exit v10
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v8

    :cond_ad
    move v7, v9

    goto :goto_4a

    :cond_af
    move v2, v9

    goto :goto_59

    :catch_b1
    move-exception v3

    const-string v8, "PackageManager"

    const-string v10, "Exception trying to enqueue restore"

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_96

    :cond_bb
    const-string v8, "PackageManager"

    const-string v10, "Backup Manager not found!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_96

    :catch_c4
    move-exception v8

    goto :goto_96
.end method
