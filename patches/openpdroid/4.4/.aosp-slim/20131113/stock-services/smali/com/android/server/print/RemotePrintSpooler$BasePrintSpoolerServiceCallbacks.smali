.class abstract Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BasePrintSpoolerServiceCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler$1;)V
    .registers 2
    .param p1    # Lcom/android/server/print/RemotePrintSpooler$1;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelPrintJobResult(ZI)V
    .registers 3
    .param p1    # Z
    .param p2    # I

    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .registers 3
    .param p1    # Landroid/print/PrintJobInfo;
    .param p2    # I

    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .registers 3
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

    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .registers 3
    .param p1    # Z
    .param p2    # I

    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .registers 3
    .param p1    # Z
    .param p2    # I

    return-void
.end method
