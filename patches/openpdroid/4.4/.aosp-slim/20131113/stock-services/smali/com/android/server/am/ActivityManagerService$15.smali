.class Lcom/android/server/am/ActivityManagerService$15;
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

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 6
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method
