.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHal:I

.field private final mHalLock:Ljava/lang/Object;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v1, :cond_4e

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    iget v1, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v1, :cond_4e

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    return-void
.end method

.method private static native halGetCarrierFrequencies(I)[I
.end method

.method private static native halOpen()I
.end method

.method private static native halTransmit(II[I)I
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 3

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    invoke-static {v0}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(I)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public hasIrEmitter()Z
    .registers 2

    iget v0, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 15
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # [I

    iget-object v7, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.TRANSMIT_IR"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_12

    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Requires TRANSMIT_IR permission"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_12
    const-wide/16 v5, 0x0

    move-object v0, p3

    array-length v3, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v3, :cond_2a

    aget v4, v0, v2

    if-gtz v4, :cond_25

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Non-positive IR slice"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_25
    int-to-long v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2a
    const-wide/32 v7, 0x1e8480

    cmp-long v7, v5, v7

    if-lez v7, :cond_39

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "IR pattern too long"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_39
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    iget-object v8, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3f
    iget v7, p0, Lcom/android/server/ConsumerIrService;->mHal:I

    invoke-static {v7, p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(II[I)I

    move-result v1

    if-gez v1, :cond_5f

    const-string v7, "ConsumerIrService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error transmitting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    monitor-exit v8

    return-void

    :catchall_61
    move-exception v7

    monitor-exit v8
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_61

    throw v7
.end method
