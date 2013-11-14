.class Lcom/android/server/NsdService$NsdStateMachine$1;
.super Landroid/database/ContentObserver;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V
    .registers 3
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->isNsdEnabled()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$100(Lcom/android/server/NsdService;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    move-result-object v0

    const v1, 0x60018

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    move-result-object v0

    const v1, 0x60019

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    goto :goto_18
.end method
