.class Lcom/android/server/am/UsageStatsService$TimeStats;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeStats"
.end annotation


# instance fields
.field count:I

.field times:[I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1    # Landroid/os/Parcel;

    const/16 v3, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_1d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1d
    return-void
.end method


# virtual methods
.method add(I)V
    .registers 7
    .param p1    # I

    const/16 v4, 0x9

    # getter for: Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I
    invoke-static {}, Lcom/android/server/am/UsageStatsService;->access$000()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v4, :cond_19

    aget v2, v0, v1

    if-ge p1, v2, :cond_16

    iget-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :goto_15
    return-void

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v4

    goto :goto_15
.end method

.method incCount()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1    # Landroid/os/Parcel;

    iget v2, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/4 v0, 0x0

    :goto_8
    const/16 v2, 0xa

    if-ge v0, v2, :cond_14

    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method
