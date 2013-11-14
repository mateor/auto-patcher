.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$100(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_63

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$100(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/PacManager;->get(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$200(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_48
    .catchall {:try_start_11 .. :try_end_1a} :catchall_63

    move-result-object v0

    :goto_1b
    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_63

    if-eqz v0, :cond_69

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_25
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/connectivity/PacManager;->access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z

    :cond_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_66

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PacManager;->access$502(Lcom/android/server/connectivity/PacManager;Z)Z

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$600(Lcom/android/server/connectivity/PacManager;)V

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->longSchedule()V
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$700(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_10

    :catch_48
    move-exception v1

    const/4 v0, 0x0

    :try_start_4a
    const-string v2, "PacManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load PAC file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_63
    move-exception v2

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_63

    throw v2

    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    :cond_69
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->reschedule()V
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$800(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_10
.end method
