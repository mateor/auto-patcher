.class Lcom/android/server/display/WifiDisplayAdapter$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->access$100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/WifiDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
