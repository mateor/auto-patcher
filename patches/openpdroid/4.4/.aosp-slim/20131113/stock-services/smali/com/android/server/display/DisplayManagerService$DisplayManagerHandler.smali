.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapter()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$100(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$200(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;II)V

    goto :goto_5

    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;->requestTraversal()V

    goto :goto_5

    :pswitch_26
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_2d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayViewport;->copyFrom(Lcom/android/server/display/DisplayViewport;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayViewport;->copyFrom(Lcom/android/server/display/DisplayViewport;)V

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_62

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;->setDisplayViewports(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/DisplayViewport;)V

    goto :goto_5

    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method
