.class Lcom/android/server/location/GeofenceProxy$2;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v2

    # setter for: Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;
    invoke-static {v0, v2}, Lcom/android/server/location/GeofenceProxy;->access$202(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$100(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;
    invoke-static {v0, v2}, Lcom/android/server/location/GeofenceProxy;->access$202(Lcom/android/server/location/GeofenceProxy;Landroid/hardware/location/IGeofenceHardware;)Landroid/hardware/location/IGeofenceHardware;

    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$2;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0
.end method
