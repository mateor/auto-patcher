.class Lcom/android/server/display/WifiDisplayController$5$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$5;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$5;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$5;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # -= operator for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$720(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$900(Lcom/android/server/display/WifiDisplayController;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$502(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_2d
.end method
