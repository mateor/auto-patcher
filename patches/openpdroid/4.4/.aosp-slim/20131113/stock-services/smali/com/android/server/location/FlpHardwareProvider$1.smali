.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedBatchSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$300(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$900(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .registers 5
    .param p1    # Landroid/hardware/location/IFusedLocationHardwareSink;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "IFusedLocationHardware does not support multiple sinks"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_17

    return-void
.end method

.method public requestBatchOfLocations(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$700(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .registers 4
    .param p1    # I
    .param p2    # Landroid/location/FusedBatchOptions;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$400(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method public stopBatching(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$500(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$800(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .registers 5
    .param p1    # Landroid/hardware/location/IFusedLocationHardwareSink;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-ne v0, p1, :cond_15

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .registers 4
    .param p1    # I
    .param p2    # Landroid/location/FusedBatchOptions;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$600(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    return-void
.end method
