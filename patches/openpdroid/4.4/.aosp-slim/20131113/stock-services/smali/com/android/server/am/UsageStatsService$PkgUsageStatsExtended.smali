.class Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgUsageStatsExtended"
.end annotation


# instance fields
.field final mFullyDrawnTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchCount:I

.field final mLaunchTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mPausedTime:J

.field mResumedTime:J

.field mUsageTime:J

.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V
    .registers 10
    .param p2    # Landroid/os/Parcel;

    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v3, :cond_3c

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v4, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_46
    if-ge v1, v2, :cond_59

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v4, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_59
    return-void
.end method


# virtual methods
.method addFullyDrawnTime(Ljava/lang/String;I)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    return-void
.end method

.method addLaunchCount(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;->incCount()V

    return-void
.end method

.method addLaunchTime(Ljava/lang/String;I)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    return-void
.end method

.method clear()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    return-void
.end method

.method updatePause()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    iget-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    iget-wide v2, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    iget-wide v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    return-void
.end method

.method updateResume(Ljava/lang/String;Z)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p2, :cond_8

    iget v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1    # Landroid/os/Parcel;

    iget v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_2f

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2f
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v1, :cond_54

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_54
    return-void
.end method
