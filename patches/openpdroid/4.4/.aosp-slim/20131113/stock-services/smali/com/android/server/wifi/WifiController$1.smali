.class Lcom/android/server/wifi/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v2, 0x26005

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, v2, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_14
.end method
