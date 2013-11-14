.class Lcom/android/server/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, v1

    move-wide v8, v6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    return-void
.end method
