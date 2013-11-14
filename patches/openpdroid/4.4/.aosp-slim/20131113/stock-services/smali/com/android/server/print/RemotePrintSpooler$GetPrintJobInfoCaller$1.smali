.class Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .registers 4
    .param p1    # Landroid/print/PrintJobInfo;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method
