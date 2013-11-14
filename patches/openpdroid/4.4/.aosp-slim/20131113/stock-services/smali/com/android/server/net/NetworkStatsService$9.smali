.class Lcom/android/server/net/NetworkStatsService$9;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 9
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$1500(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p1, v4, :cond_39

    move v1, v2

    :goto_b
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$1600(Lcom/android/server/net/NetworkStatsService;)I

    move-result v4

    if-eq p2, v4, :cond_3b

    move v0, v2

    :goto_14
    if-eqz v0, :cond_2e

    if-nez v1, :cond_2e

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2e
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # setter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneState:I
    invoke-static {v2, p1}, Lcom/android/server/net/NetworkStatsService;->access$1502(Lcom/android/server/net/NetworkStatsService;I)I

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    # setter for: Lcom/android/server/net/NetworkStatsService;->mLastPhoneNetworkType:I
    invoke-static {v2, p2}, Lcom/android/server/net/NetworkStatsService;->access$1602(Lcom/android/server/net/NetworkStatsService;I)I

    return-void

    :cond_39
    move v1, v3

    goto :goto_b

    :cond_3b
    move v0, v3

    goto :goto_14
.end method
