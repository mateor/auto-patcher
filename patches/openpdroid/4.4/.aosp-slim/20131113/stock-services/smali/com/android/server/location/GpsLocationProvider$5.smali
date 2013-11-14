.class Lcom/android/server/location/GpsLocationProvider$5;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    if-eqz v0, :cond_2a

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "GpsLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    array-length v3, v0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V
    invoke-static {v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;[BI)V

    :cond_2a
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    if-nez v0, :cond_42

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_42
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
