.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->logStrictModeViolationToDropBox(Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-wide/16 v1, 0x1388

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_47

    :goto_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mStrictModeBuffer:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v2

    monitor-enter v2

    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mStrictModeBuffer:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1e

    monitor-exit v2

    :goto_1d
    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mStrictModeBuffer:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mStrictModeBuffer:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mStrictModeBuffer:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_44

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1

    :catch_47
    move-exception v1

    goto :goto_5
.end method
