.class final Lcom/android/server/am/PendingThumbnailsRecord;
.super Ljava/lang/Object;
.source "PendingThumbnailsRecord.java"


# instance fields
.field finished:Z

.field final pendingRecords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receiver:Landroid/app/IThumbnailReceiver;


# direct methods
.method constructor <init>(Landroid/app/IThumbnailReceiver;)V
    .registers 3
    .param p1    # Landroid/app/IThumbnailReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PendingThumbnailsRecord;->receiver:Landroid/app/IThumbnailReceiver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingThumbnailsRecord;->pendingRecords:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingThumbnailsRecord;->finished:Z

    return-void
.end method
