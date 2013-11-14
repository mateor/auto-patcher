.class Lcom/android/server/net/NetworkStatsService$8;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "globalAlert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_33
    return-void
.end method
