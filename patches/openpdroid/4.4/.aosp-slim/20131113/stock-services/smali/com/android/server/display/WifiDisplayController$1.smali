.class Lcom/android/server/display/WifiDisplayController$1;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V
    .registers 3
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$1;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$1;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    return-void
.end method
