.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;
    invoke-static {v1, v3}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method
