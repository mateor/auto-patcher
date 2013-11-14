.class Lcom/android/server/ConnectivityService$5;
.super Lcom/android/server/ConnectivityService$CheckMp$CallBack;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->checkMobileProvisioning(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method onComplete(Ljava/lang/Integer;)V
    .registers 8
    .param p1    # Ljava/lang/Integer;

    const/4 v5, 0x1

    const/4 v4, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_c8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: ignore unexpected result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$4300(Ljava/lang/String;)V

    :goto_41
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :pswitch_4c
    const-string v2, "CheckMp.onComplete: ignore, connected or no connection"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_41

    :pswitch_52
    const-string v2, "CheckMp.onComplete: warm sim"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    :cond_69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm (redirected), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v5, v4, v3, v1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_8f
    const-string v2, "CheckMp.onComplete: warm (redirected), no url"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_41

    :pswitch_95
    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm (no dns/tcp), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v5, v4, v3, v1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_c1
    const-string v2, "CheckMp.onComplete: warm (no dns/tcp), no url"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto/16 :goto_41

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_52
        :pswitch_95
    .end packed-switch
.end method
