.class final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field private final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 3
    .param p1    # Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz v2, :cond_18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->access$600(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
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

.method public onAllPrintJobsHandled()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz v2, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # invokes: Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->access$700(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_14
    return-void

    :catchall_15
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1    # Landroid/print/PrintJobInfo;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz v2, :cond_18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->access$600(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
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

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1    # Landroid/print/PrintJobInfo;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz v2, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    # invokes: Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    invoke-static {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->access$800(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_14
    return-void

    :catchall_15
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
