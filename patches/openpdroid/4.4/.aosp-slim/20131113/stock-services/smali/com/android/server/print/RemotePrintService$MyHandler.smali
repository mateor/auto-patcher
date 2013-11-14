.class final Lcom/android/server/print/RemotePrintService$MyHandler;
.super Landroid/os/Handler;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BINDER_DIED:I = 0xc

.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY:I = 0xb

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_ALL_PRINT_JOBS_HANDLED:I = 0x8

.field public static final MSG_ON_PRINT_JOB_QUEUED:I = 0xa

.field public static final MSG_ON_REQUEST_CANCEL_PRINT_JOB:I = 0x9

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x7

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1    # Landroid/os/Message;

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_66

    :goto_5
    return-void

    :pswitch_6
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$400(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    :pswitch_c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$500(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    :pswitch_12
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V
    invoke-static {v4, v3}, Lcom/android/server/print/RemotePrintService;->access$600(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto :goto_5

    :pswitch_1c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$700(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    :pswitch_22
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V
    invoke-static {v4, v2}, Lcom/android/server/print/RemotePrintService;->access$800(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto :goto_5

    :pswitch_2c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->access$900(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_5

    :pswitch_36
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->access$1000(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_5

    :pswitch_40
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$100(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    :pswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintJobInfo;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->access$200(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    goto :goto_5

    :pswitch_50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintJobInfo;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->access$300(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    goto :goto_5

    :pswitch_5a
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleDestroy()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$2500(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    :pswitch_60
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleBinderDied()V
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->access$1600(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_5

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_1c
        :pswitch_22
        :pswitch_2c
        :pswitch_36
        :pswitch_40
        :pswitch_46
        :pswitch_50
        :pswitch_5a
        :pswitch_60
    .end packed-switch
.end method
