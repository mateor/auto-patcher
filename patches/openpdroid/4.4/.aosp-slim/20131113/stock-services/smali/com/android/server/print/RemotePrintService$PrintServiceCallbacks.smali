.class public interface abstract Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.super Ljava/lang/Object;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrintServiceCallbacks"
.end annotation


# virtual methods
.method public abstract onPrintersAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPrintersRemoved(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onServiceDied(Lcom/android/server/print/RemotePrintService;)V
.end method
