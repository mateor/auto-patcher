.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/print/RemotePrintService;
    .param p2    # Lcom/android/server/print/RemotePrintService$1;

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mDestroyed:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1100(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mBinding:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1200(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_11
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1400(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->access$1300(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_20
    return-void

    :cond_21
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # setter for: Lcom/android/server/print/RemotePrintService;->mBinding:Z
    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->access$1202(Lcom/android/server/print/RemotePrintService;Z)Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v5

    # setter for: Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;
    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->access$1502(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;

    :try_start_2f
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_a5

    :try_start_35
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1500(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->access$1700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_44} :catch_ad

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1900(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$400(Lcom/android/server/print/RemotePrintService;)V

    :cond_59
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->access$600(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    :cond_74
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1800(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_cd

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_cd

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_8f
    if-ge v0, v3, :cond_cd

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    invoke-static {v5, v4}, Lcom/android/server/print/RemotePrintService;->access$900(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    :catch_a5
    move-exception v2

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleBinderDied()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    goto/16 :goto_20

    :catch_ad
    move-exception v2

    const-string v4, "RemotePrintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error setting client for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleBinderDied()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    goto/16 :goto_20

    :cond_cd
    :goto_cd
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e9

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_cd

    :cond_e9
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1900(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_fe

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # getter for: Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2300(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_fe

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->ensureUnbound()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2400(Lcom/android/server/print/RemotePrintService;)V

    :cond_fe
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    # setter for: Lcom/android/server/print/RemotePrintService;->mServiceDied:Z
    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->access$1802(Lcom/android/server/print/RemotePrintService;Z)Z

    goto/16 :goto_20
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/print/RemotePrintService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->access$1202(Lcom/android/server/print/RemotePrintService;Z)Z

    return-void
.end method
