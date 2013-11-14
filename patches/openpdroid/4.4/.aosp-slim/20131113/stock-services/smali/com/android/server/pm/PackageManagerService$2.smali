.class Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorage(JLandroid/content/IntentSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$pi:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;JLandroid/content/IntentSender;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-wide p2, p0, Lcom/android/server/pm/PackageManagerService$2;->val$freeStorageSize:J

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$2;->val$pi:Landroid/content/IntentSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$2;->val$freeStorageSize:J

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v7

    if-gez v7, :cond_20

    const-string v0, "PackageManager"

    const-string v3, "Couldn\'t clear application caches"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_32

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->val$pi:Landroid/content/IntentSender;

    if-eqz v0, :cond_31

    if-ltz v7, :cond_35

    const/4 v2, 0x1

    :goto_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->val$pi:Landroid/content/IntentSender;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_31
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_28 .. :try_end_31} :catch_37

    :cond_31
    :goto_31
    return-void

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    const/4 v2, 0x0

    goto :goto_28

    :catch_37
    move-exception v6

    const-string v0, "PackageManager"

    const-string v1, "Failed to send pending intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method
