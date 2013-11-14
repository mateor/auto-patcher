.class Lcom/android/server/location/GeofenceProxy$1;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$1;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$1;->this$0:Lcom/android/server/location/GeofenceProxy;

    # getter for: Lcom/android/server/location/GeofenceProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$000(Lcom/android/server/location/GeofenceProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
