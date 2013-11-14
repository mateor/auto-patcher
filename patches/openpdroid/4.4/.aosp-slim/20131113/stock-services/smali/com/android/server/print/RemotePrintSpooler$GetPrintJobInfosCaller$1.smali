.class Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .registers 4
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method
