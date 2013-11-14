.class abstract Lcom/android/server/wifi/WifiService$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 9
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/IBinder;
    .param p5    # Landroid/os/WorkSource;

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mMode:I

    iput-object p4, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    :try_start_d
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService$DeathRecipient;->binderDied()V

    goto :goto_13
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
