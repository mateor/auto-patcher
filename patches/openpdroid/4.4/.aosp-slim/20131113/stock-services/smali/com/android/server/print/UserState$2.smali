.class Lcom/android/server/print/UserState$2;
.super Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/content/Context;)V
    .registers 3
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;-><init>(Lcom/android/server/print/UserState;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/UserState$2;->this$0:Lcom/android/server/print/UserState;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    invoke-static {v0, v1}, Lcom/android/server/print/UserState;->access$202(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-void
.end method
