.class Lcom/android/server/location/FusedProxy$1;
.super Ljava/lang/Object;
.source "FusedProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/FusedProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FusedProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/FusedProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/FusedProxy$1;->this$0:Lcom/android/server/location/FusedProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/FusedProxy$1;->this$0:Lcom/android/server/location/FusedProxy;

    iget-object v1, p0, Lcom/android/server/location/FusedProxy$1;->this$0:Lcom/android/server/location/FusedProxy;

    # getter for: Lcom/android/server/location/FusedProxy;->mLocationHardware:Lcom/android/server/location/FusedLocationHardwareSecure;
    invoke-static {v1}, Lcom/android/server/location/FusedProxy;->access$000(Lcom/android/server/location/FusedProxy;)Lcom/android/server/location/FusedLocationHardwareSecure;

    move-result-object v1

    # invokes: Lcom/android/server/location/FusedProxy;->bindProvider(Landroid/hardware/location/IFusedLocationHardware;)V
    invoke-static {v0, v1}, Lcom/android/server/location/FusedProxy;->access$100(Lcom/android/server/location/FusedProxy;Landroid/hardware/location/IFusedLocationHardware;)V

    return-void
.end method
