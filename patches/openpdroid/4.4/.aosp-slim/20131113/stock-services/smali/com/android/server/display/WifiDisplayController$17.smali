.class Lcom/android/server/display/WifiDisplayController$17;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$17;->val$width:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$17;->val$height:I

    iput p8, p0, Lcom/android/server/display/WifiDisplayController$17;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_49

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$17;->val$width:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$17;->val$height:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$17;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    :cond_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    goto :goto_13

    :cond_62
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_2c
.end method
