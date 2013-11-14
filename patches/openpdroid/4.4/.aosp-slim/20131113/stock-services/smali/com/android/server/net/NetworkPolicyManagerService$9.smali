.class Lcom/android/server/net/NetworkPolicyManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v3, "changeReason"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3e

    const-string v3, "wifiConfiguration"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_23
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    :cond_3d
    monitor-exit v4

    :cond_3e
    return-void

    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_3f

    throw v3
.end method
