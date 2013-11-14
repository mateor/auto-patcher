.class Lcom/android/server/display/WifiDisplayController$16;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$16;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2900(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$16;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # -= operator for: Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$3220(Lcom/android/server/display/WifiDisplayController;I)I

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying Wifi display connection.  Retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$16;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->retryConnection()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)V

    :cond_3b
    return-void
.end method
