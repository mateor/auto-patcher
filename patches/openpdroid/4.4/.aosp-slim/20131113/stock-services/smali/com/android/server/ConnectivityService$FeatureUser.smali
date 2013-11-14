.class Lcom/android/server/ConnectivityService$FeatureUser;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureUser"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCreateTime:J

.field mFeature:Ljava/lang/String;

.field mNetworkType:I

.field mPid:I

.field mUid:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_23
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService FeatureUser binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    return-void
.end method

.method public expire()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    return-void
.end method

.method public isSameUser(IIILjava/lang/String;)Z
    .registers 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v0, p1, :cond_16

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v0, p2, :cond_16

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v0, p3, :cond_16

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z
    .registers 6
    .param p1    # Lcom/android/server/ConnectivityService$FeatureUser;

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget v0, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v1, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget-object v3, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
