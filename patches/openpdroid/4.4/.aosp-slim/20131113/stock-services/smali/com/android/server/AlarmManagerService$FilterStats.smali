.class final Lcom/android/server/AlarmManagerService$FilterStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilterStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mTarget:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field nesting:I

.field numWakeup:I

.field startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Landroid/util/Pair;)V
    .registers 3
    .param p1    # Lcom/android/server/AlarmManagerService$BroadcastStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iput-object p2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    return-void
.end method
