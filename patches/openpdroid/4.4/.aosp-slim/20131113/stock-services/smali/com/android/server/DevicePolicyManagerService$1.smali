.class Lcom/android/server/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService$1;->getSendingUserId()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_1e
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/DevicePolicyManagerService$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/DevicePolicyManagerService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_3a
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V

    :cond_3f
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/DevicePolicyManagerService;->removeUserData(I)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_6d
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    monitor-enter v3

    :try_start_78
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_86

    :cond_80
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V
    invoke-static {v2, v1}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;I)V

    goto :goto_4c

    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v2
.end method
