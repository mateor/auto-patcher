.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$9;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$9;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$9;->val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;I)Z
    invoke-static {v2, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_2d

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$9;->val$userId:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_2c

    :try_start_25
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_30

    :cond_2c
    :goto_2c
    return-void

    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    :catch_30
    move-exception v0

    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method
