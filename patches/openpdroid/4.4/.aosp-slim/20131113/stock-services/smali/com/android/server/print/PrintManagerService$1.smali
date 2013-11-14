.class Lcom/android/server/print/PrintManagerService$1;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService;->systemRuning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$1;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$1;->this$0:Lcom/android/server/print/PrintManagerService;

    # getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$1;->this$0:Lcom/android/server/print/PrintManagerService;

    # invokes: Lcom/android/server/print/PrintManagerService;->getCurrentUserStateLocked()Lcom/android/server/print/UserState;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService;->access$100(Lcom/android/server/print/PrintManagerService;)Lcom/android/server/print/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    invoke-virtual {v0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    return-void

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method
