.class Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public onSetPrintJobStateResult(ZI)V
    .registers 5
    .param p1    # Z
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method
