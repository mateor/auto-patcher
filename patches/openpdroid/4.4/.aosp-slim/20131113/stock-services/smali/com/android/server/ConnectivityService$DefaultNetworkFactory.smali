.class Lcom/android/server/ConnectivityService$DefaultNetworkFactory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/ConnectivityService$NetworkFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;
    .registers 6
    .param p1    # I
    .param p2    # Landroid/net/NetworkConfig;

    iget v0, p2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v0, :pswitch_data_4c

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a NetworkStateTracker for an unknown radio type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    new-instance v0, Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    :goto_27
    return-object v0

    :pswitch_28
    new-instance v0, Landroid/net/MobileDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_27

    :pswitch_30
    new-instance v0, Landroid/net/DummyDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_27

    :pswitch_38
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v0

    goto :goto_27

    :pswitch_3d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_27

    :pswitch_46
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v0

    goto :goto_27

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_20
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3d
        :pswitch_38
        :pswitch_30
        :pswitch_46
    .end packed-switch
.end method
