.class Lcom/android/server/print/RemotePrintService$8;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field final synthetic val$printerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$8;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$8;->val$printerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$8;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$8;->val$printerIds:Ljava/util/List;

    # invokes: Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->access$800(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method
