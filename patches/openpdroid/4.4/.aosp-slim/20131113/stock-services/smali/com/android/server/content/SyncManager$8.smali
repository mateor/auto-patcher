.class Lcom/android/server/content/SyncManager$8;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
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

    iput-object p1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncRequest(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 17
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    return-void
.end method
