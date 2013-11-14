.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1    # Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/print/PrinterId;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid printer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    return-void
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_17

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_13

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    invoke-direct {p0, p1, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .registers 7
    .param p1    # Landroid/print/PrintJobId;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    if-eqz v2, :cond_20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1b

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1a
    return-object v3

    :catchall_1b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_20
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, -0x4

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_20

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1f
    return-object v3

    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .param p1    # Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/RemotePrintService;

    if-eqz v3, :cond_23

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_19
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_23
    return-void

    :catchall_24
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .registers 7
    .param p1    # Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/RemotePrintService;

    if-eqz v3, :cond_23

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_19
    # getter for: Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_23
    return-void

    :catchall_24
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 8
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    if-eqz v2, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_19
    return v3

    :catchall_1a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 7
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    if-eqz v2, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_19
    return v3

    :catchall_1a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 7
    .param p1    # Landroid/os/ParcelFileDescriptor;
    .param p2    # Landroid/print/PrintJobId;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    if-eqz v2, :cond_18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_18
    return-void

    :catchall_19
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
