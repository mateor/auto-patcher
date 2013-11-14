.class Lcom/android/server/content/SyncManager$9;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .registers 15
    .param p1    # Landroid/content/SyncAdapterType;
    .param p2    # I
    .param p3    # Z

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_11

    iget-object v0, p0, Lcom/android/server/content/SyncManager$9;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, -0x1

    const/4 v3, -0x3

    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, v1

    move-wide v8, v6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    :cond_11
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # Z

    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$9;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method
