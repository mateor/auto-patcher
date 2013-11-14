.class Lcom/android/server/wifi/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    const v5, 0x26002

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    const v5, 0x2600c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_19

    :cond_2f
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    const v5, 0x26003

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_19

    :cond_44
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    const v6, 0x26004

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_19

    :cond_60
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v4, v4, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_19

    :cond_76
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "phoneinECMState"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v4}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26001

    if-eqz v1, :cond_94

    const/4 v4, 0x1

    :goto_90
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto :goto_19

    :cond_94
    move v4, v5

    goto :goto_90
.end method
