.class Lcom/android/server/content/SyncManager$13;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/content/SyncManager$AccountSyncStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AccountSyncStats;Lcom/android/server/content/SyncManager$AccountSyncStats;)I
    .registers 8
    .param p1    # Lcom/android/server/content/SyncManager$AccountSyncStats;
    .param p2    # Lcom/android/server/content/SyncManager$AccountSyncStats;

    iget v1, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    iget v2, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_12

    iget-wide v1, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    iget-wide v3, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_12
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$AccountSyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$13;->compare(Lcom/android/server/content/SyncManager$AccountSyncStats;Lcom/android/server/content/SyncManager$AccountSyncStats;)I

    move-result v0

    return v0
.end method
