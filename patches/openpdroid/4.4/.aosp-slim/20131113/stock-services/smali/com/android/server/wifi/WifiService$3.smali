.class Lcom/android/server/wifi/WifiService$3;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->registerForScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/os/Handler;)V
    .registers 3
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v0, v0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiScanAlwaysAvailableToggled()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v0

    const v1, 0x26007

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    return-void
.end method
