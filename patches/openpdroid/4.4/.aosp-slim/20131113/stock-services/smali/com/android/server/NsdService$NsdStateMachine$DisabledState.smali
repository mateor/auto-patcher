.class Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    # getter for: Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$800(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    move-result-object v1

    # invokes: Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$900(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_6

    :pswitch_data_14
    .packed-switch 0x60018
        :pswitch_7
    .end packed-switch
.end method
