.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v3}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    if-eqz v0, :cond_41

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    # invokes: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v3, v5}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    :cond_41
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    # invokes: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/DevicePolicyManagerService;->access$400(Lcom/android/server/DevicePolicyManagerService;I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit v4

    return-void

    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v3
.end method
