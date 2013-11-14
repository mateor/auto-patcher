.class Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateMachineHandler"
.end annotation


# instance fields
.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V
    .registers 6
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_7e

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiStateMachineHandler.handleMessage ignoring msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void

    :sswitch_1f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$302(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1e

    :cond_2b
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiStateMachine connection failure, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiService;->access$302(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1e

    :sswitch_4b
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiStateMachine channel lost, msg.arg1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiService;->access$302(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1e

    :sswitch_data_7e
    .sparse-switch
        0x11000 -> :sswitch_1f
        0x11004 -> :sswitch_4b
    .end sparse-switch
.end method
