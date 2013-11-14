.class final Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/display/DisplayManagerService;
    .param p2    # Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .registers 4
    .param p1    # Lcom/android/server/display/DisplayDevice;
    .param p2    # I

    packed-switch p2, :pswitch_data_16

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_3

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_3

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_3

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->access$1400(Lcom/android/server/display/DisplayManagerService;Z)V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
