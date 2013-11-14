.class Lcom/android/server/connectivity/DataConnectionStats$1;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # invokes: Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 4
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$302(Lcom/android/server/connectivity/DataConnectionStats;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # invokes: Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1    # Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$102(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # invokes: Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V
    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1    # Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    # setter for: Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$002(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    return-void
.end method
