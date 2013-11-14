.class final Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onHotplug(JIZ)V
    .registers 7
    .param p1    # J
    .param p3    # I
    .param p4    # Z

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    if-eqz p4, :cond_10

    :try_start_9
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    # invokes: Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V
    invoke-static {v0, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$000(Lcom/android/server/display/LocalDisplayAdapter;I)V

    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    # invokes: Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V
    invoke-static {v0, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$100(Lcom/android/server/display/LocalDisplayAdapter;I)V

    goto :goto_e

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v0
.end method
