.class Lcom/android/server/am/UsageStatsService$1;
.super Ljava/lang/Thread;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/UsageStatsService;->access$100(Lcom/android/server/am/UsageStatsService;ZZ)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    # getter for: Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$1;->this$0:Lcom/android/server/am/UsageStatsService;

    # getter for: Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/am/UsageStatsService;->access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
