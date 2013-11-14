.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1    # Landroid/os/Message;

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    :goto_6
    return-void

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_15

    :goto_11
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_6

    :cond_15
    const/4 v1, 0x0

    goto :goto_11

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
