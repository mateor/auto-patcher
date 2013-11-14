.class Lcom/android/server/wifi/WifiService$ClientHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V
    .registers 3
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private replyFailed(Landroid/os/Message;I)V
    .registers 5
    .param p1    # Landroid/os/Message;
    .param p2    # I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    :try_start_a
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1    # Landroid/os/Message;

    const v8, 0x25008

    const v7, 0x25002

    const v6, 0x25001

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_ec

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientHandler.handleMessage ignoring msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void

    :sswitch_27
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->addClient(Landroid/os/Messenger;)V

    goto :goto_26

    :cond_37
    const-string v3, "WifiService"

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

    goto :goto_26

    :sswitch_52
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_57

    :cond_57
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->removeClient(Landroid/os/Messenger;)V

    goto :goto_26

    :sswitch_63
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, p0, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_26

    :sswitch_74
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-eq v3, v4, :cond_94

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, v3, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_26

    :cond_94
    const-string v3, "WifiService"

    const-string v4, "ClientHandler.handleMessage cannot process msg with PAC"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_a3

    invoke-direct {p0, p1, v7}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto :goto_26

    :cond_a3
    invoke-direct {p0, p1, v8}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto :goto_26

    :cond_a7
    if-nez v1, :cond_b9

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b9

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, v3, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_26

    :cond_b9
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClientHandler.handleMessage ignoring invalid msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v6, :cond_da

    invoke-direct {p0, p1, v7}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto/16 :goto_26

    :cond_da
    invoke-direct {p0, p1, v8}, Lcom/android/server/wifi/WifiService$ClientHandler;->replyFailed(Landroid/os/Message;I)V

    goto/16 :goto_26

    :sswitch_df
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$ClientHandler;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, v3, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_26

    :sswitch_data_ec
    .sparse-switch
        0x11000 -> :sswitch_27
        0x11001 -> :sswitch_63
        0x11004 -> :sswitch_52
        0x25001 -> :sswitch_74
        0x25004 -> :sswitch_df
        0x25007 -> :sswitch_74
        0x2500a -> :sswitch_df
        0x2500e -> :sswitch_df
        0x25011 -> :sswitch_df
        0x25014 -> :sswitch_df
    .end sparse-switch
.end method
