.class public interface abstract Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrintSpoolerCallbacks"
.end annotation


# virtual methods
.method public abstract onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
.end method

.method public abstract onPrintJobQueued(Landroid/print/PrintJobInfo;)V
.end method

.method public abstract onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
.end method
