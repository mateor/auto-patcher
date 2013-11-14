.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;
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

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$200(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I
    invoke-static {v3}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I
    invoke-static {v4}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I
    invoke-static {v5}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$500(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I
    invoke-static {v6}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$600(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z
    invoke-static {v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$700(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/OverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->show()V

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_3f
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # setter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;
    invoke-static {v1, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;

    monitor-exit v2

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw v1
.end method
