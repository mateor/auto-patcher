.class Lcom/android/server/wifi/WifiService$BatchedScanRequest;
.super Lcom/android/server/wifi/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedScanRequest"
.end annotation


# instance fields
.field pid:I

.field settings:Landroid/net/wifi/BatchedScanSettings;

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;)V
    .registers 10
    .param p2    # Landroid/net/wifi/BatchedScanSettings;
    .param p3    # Landroid/os/IBinder;

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    iput-object p2, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->pid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    iget v2, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    iget v3, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->pid:I

    # invokes: Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;II)V

    return-void
.end method

.method public isSameApp(II)Z
    .registers 4
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->pid:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatchedScanRequest{settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
