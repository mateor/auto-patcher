.class Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisabledWithScanState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .registers 10
    .param p1    # Landroid/os/Message;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    sub-long v1, v3, v5

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_14

    const/4 v3, 0x0

    :goto_13
    return v3

    :cond_14
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    const/4 v3, 0x1

    goto :goto_13
.end method


# virtual methods
.method public enter()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setOperationalMode(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_b2

    :goto_7
    return v0

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    :cond_22
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    if-nez v2, :cond_27

    move v0, v1

    :cond_27
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    :cond_29
    :goto_29
    move v0, v1

    goto :goto_7

    :cond_2b
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_29

    :cond_3f
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)V

    goto :goto_29

    :pswitch_45
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    :cond_64
    :pswitch_64
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_29

    :pswitch_7a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_29

    :pswitch_8f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    if-eq v0, v2, :cond_9d

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_29

    :cond_9d
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "DEFERRED_TOGGLE handled"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_29

    nop

    :pswitch_data_b2
    .packed-switch 0x26007
        :pswitch_64
        :pswitch_8
        :pswitch_45
        :pswitch_7a
        :pswitch_8f
    .end packed-switch
.end method
