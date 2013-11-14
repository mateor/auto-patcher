.class final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetPrintJobInfoCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 6
    .param p1    # Landroid/print/IPrintSpooler;
    .param p2    # Landroid/print/PrintJobId;
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->onBeforeRemoteCall()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, v1, p3, v0}, Landroid/print/IPrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    return-object v1
.end method
