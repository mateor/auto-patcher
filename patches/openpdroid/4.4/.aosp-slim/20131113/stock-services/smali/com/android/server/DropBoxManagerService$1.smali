.class Lcom/android/server/DropBoxManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    if-eqz p2, :cond_15

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/DropBoxManagerService;->mBooted:Z
    invoke-static {v0, v1}, Lcom/android/server/DropBoxManagerService;->access$002(Lcom/android/server/DropBoxManagerService;Z)Z

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    const-wide/16 v1, 0x0

    # setter for: Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J
    invoke-static {v0, v1, v2}, Lcom/android/server/DropBoxManagerService;->access$102(Lcom/android/server/DropBoxManagerService;J)J

    new-instance v0, Lcom/android/server/DropBoxManagerService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1$1;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    invoke-virtual {v0}, Lcom/android/server/DropBoxManagerService$1$1;->start()V

    goto :goto_14
.end method
