.class final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x5

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x6

.field public static final MSG_DESTROY_SERVICE:I = 0x10

.field public static final MSG_DISPATCH_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x9

.field public static final MSG_DISPATCH_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0xa

.field public static final MSG_DISPATCH_PRINTERS_ADDED:I = 0x3

.field public static final MSG_DISPATCH_PRINTERS_REMOVED:I = 0x4

.field public static final MSG_DISPATCH_START_PRINTER_DISCOVERY:I = 0xb

.field public static final MSG_DISPATCH_STOP_PRINTER_DISCOVERY:I = 0xc

.field public static final MSG_PRINTERS_ADDED:I = 0x1

.field public static final MSG_PRINTERS_REMOVED:I = 0x2

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x7

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0xe

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x8

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0xf

.field public static final MSG_VALIDATE_PRINTERS:I = 0xd


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1    # Landroid/os/Message;

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_e4

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    invoke-static {v8, v2, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    goto :goto_5

    :pswitch_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    invoke-static {v8, v2, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1000(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V
    invoke-static {v8, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1100(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    :pswitch_39
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersRemoved(Ljava/util/List;)V
    invoke-static {v8, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1200(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    :pswitch_43
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    goto :goto_5

    :pswitch_4b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    goto :goto_5

    :pswitch_53
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_5

    :pswitch_5c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    goto :goto_5

    :pswitch_64
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1300(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    :pswitch_6e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1400(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto :goto_5

    :pswitch_78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v8, v7, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1500(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_8e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStopPrinterDiscovery(Ljava/util/List;)V
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1600(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_99
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    invoke-static {v8, v6, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1700(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_af
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1800(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_5

    :pswitch_c5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrinterId;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    # invokes: Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->access$1900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto/16 :goto_5

    :pswitch_db
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto/16 :goto_5

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1b
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_4b
        :pswitch_53
        :pswitch_5c
        :pswitch_64
        :pswitch_6e
        :pswitch_78
        :pswitch_8e
        :pswitch_99
        :pswitch_af
        :pswitch_c5
        :pswitch_db
    .end packed-switch
.end method
