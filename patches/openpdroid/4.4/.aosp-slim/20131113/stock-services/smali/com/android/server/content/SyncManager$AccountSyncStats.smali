.class Lcom/android/server/content/SyncManager$AccountSyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSyncStats"
.end annotation


# instance fields
.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/content/SyncManager$1;

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
