.class Lcom/android/server/net/NetworkPolicyManagerService$3;
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

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V
    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    monitor-exit v3

    goto :goto_d

    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw v2
.end method
