.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$700(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1    # Landroid/os/Message;

    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitialState.processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4e

    :pswitch_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :pswitch_22
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_21

    :pswitch_42
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_21

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_22
        :pswitch_20
        :pswitch_42
    .end packed-switch
.end method
