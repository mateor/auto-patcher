.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$stack:Ljava/io/File;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/Watchdog$1;->val$stack:Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "watchdog"

    const-string v3, "system_server"

    iget-object v6, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/Watchdog$1;->val$stack:Ljava/io/File;

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    return-void
.end method
