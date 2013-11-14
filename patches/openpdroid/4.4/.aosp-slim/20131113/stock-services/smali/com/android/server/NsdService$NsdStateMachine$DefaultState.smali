.class Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_f2

    const-string v4, "NsdService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return v3

    :sswitch_1f
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_4f

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    const-string v3, "NsdService"

    const-string v4, "New client listening to asynchronous messages"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x11002

    invoke-virtual {v1, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    new-instance v2, Lcom/android/server/NsdService$ClientInfo;

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4d
    const/4 v3, 0x1

    goto :goto_1e

    :cond_4f
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connection failure, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :sswitch_6a
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_84

    const-string v3, "NsdService"

    const-string v4, "Send failed, client connection lost"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_84
    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connection lost with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :sswitch_9f
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/NsdService;->access$300(Lcom/android/server/NsdService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v4}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_4d

    :sswitch_b8
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v5, 0x60003

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v3}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_4d

    :sswitch_c3
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v5, 0x60007

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v3}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_4d

    :sswitch_ce
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v5, 0x6000a

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v3}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_4d

    :sswitch_da
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v5, 0x6000d

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v3}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_4d

    :sswitch_e6
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v5, 0x60013

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v3}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_4d

    :sswitch_data_f2
    .sparse-switch
        0x11000 -> :sswitch_1f
        0x11001 -> :sswitch_9f
        0x11004 -> :sswitch_6a
        0x60001 -> :sswitch_b8
        0x60006 -> :sswitch_c3
        0x60009 -> :sswitch_ce
        0x6000c -> :sswitch_da
        0x60012 -> :sswitch_e6
    .end sparse-switch
.end method
