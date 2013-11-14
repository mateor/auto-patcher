.class Lcom/android/server/net/NetworkPolicyManagerService$10;
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

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v3, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/NetworkInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string v3, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v13

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    if-nez v1, :cond_5f

    if-eqz v13, :cond_5f

    new-instance v1, Landroid/net/NetworkPolicy;

    const/4 v3, -0x1

    const-string v4, "UTC"

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    invoke-static {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;)V

    :cond_5a
    :goto_5a
    monitor-exit v17

    goto :goto_10

    :catchall_5c
    move-exception v3

    monitor-exit v17
    :try_end_5e
    .catchall {:try_start_30 .. :try_end_5e} :catchall_5c

    throw v3

    :cond_5f
    if-eqz v1, :cond_5a

    :try_start_61
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v3, :cond_5a

    iput-boolean v13, v1, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_5c

    goto :goto_5a
.end method
