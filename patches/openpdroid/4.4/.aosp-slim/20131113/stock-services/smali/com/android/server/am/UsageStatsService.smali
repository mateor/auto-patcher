.class public final Lcom/android/server/am/UsageStatsService;
.super Lcom/android/internal/app/IUsageStats$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;,
        Lcom/android/server/am/UsageStatsService$TimeStats;
    }
.end annotation


# static fields
.field private static final CHECKIN_VERSION:I = 0x4

.field private static final FILE_HISTORY:Ljava/lang/String; = "usage-history.xml"

.field private static final FILE_PREFIX:Ljava/lang/String; = "usage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x1b7740

.field private static final LAUNCH_TIME_BINS:[I

.field private static final MAX_NUM_FILES:I = 0x5

.field private static final NUM_LAUNCH_TIME_BINS:I = 0xa

.field private static final REPORT_UNEXPECTED:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "usagestats"

.field private static final TAG:Ljava/lang/String; = "UsageStats"

.field private static final VERSION:I = 0x3f0

.field private static final localLOGV:Z

.field static sService:Lcom/android/internal/app/IUsageStats;


# instance fields
.field private mCal:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private mFileLeaf:Ljava/lang/String;

.field final mFileLock:Ljava/lang/Object;

.field private mHistoryFile:Landroid/util/AtomicFile;

.field private mIsResumed:Z

.field private final mLastResumeTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastResumedComp:Ljava/lang/String;

.field private mLastResumedPkg:Ljava/lang/String;

.field private final mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;",
            ">;"
        }
    .end annotation
.end field

.field final mStatsLock:Ljava/lang/Object;

.field private final mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-void

    :array_a
    .array-data 4
        0xfa
        0x1f4
        0x2ee
        0x3e8
        0x5dc
        0x7d0
        0xbb8
        0xfa0
        0x1388
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/app/IUsageStats$Stub;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    const-string v4, "GMT+0"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v1, v0

    :cond_76
    :goto_76
    if-lez v1, :cond_a7

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    const-string v4, "UsageStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting old usage file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_76

    :cond_a7
    const-string v4, "usage-"

    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    const-string v7, "usage-history.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readStatsFromFile()V

    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readHistoryStatsFromFile()V

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    sget-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/UsageStatsService;ZZ)V
    .registers 3
    .param p0    # Lcom/android/server/am/UsageStatsService;
    .param p1    # Z
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0    # Lcom/android/server/am/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UsageStatsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0    # Lcom/android/server/am/UsageStatsService;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private checkFileLimitFLOCK()V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x5

    if-le v0, v5, :cond_6

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v0, v0, -0x5

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v0, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting usage file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method private collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V
    .registers 16
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Z
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "ZZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz p3, :cond_24

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_24
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "usage-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4d

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-le v0, v2, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-ge v0, v2, :cond_e

    :cond_4d
    :try_start_4d
    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V

    if-eqz p3, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_5d} :catch_5e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5d} :catch_82

    goto :goto_e

    :catch_5e
    move-exception v7

    const-string v0, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when collecting dump info from file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_82
    move-exception v7

    const-string v0, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when collecting dump info from file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V
    .registers 23
    .param p1    # Landroid/os/Parcel;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v15, 0x200

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p4, :cond_33

    const-string v15, "D:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/16 v15, 0x3f0

    if-eq v14, v15, :cond_39

    const-string v15, " (old data version)"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    return-void

    :cond_33
    const-string v15, "Date: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_39
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    :goto_46
    if-lez v2, :cond_32

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_32

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    if-eqz p5, :cond_71

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_71

    :cond_67
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_46

    :cond_71
    if-eqz p4, :cond_119

    const-string v15, "P:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_9c
    if-ge v6, v4, :cond_dc

    const-string v15, "A:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_c1
    const/16 v15, 0xa

    if-ge v7, v15, :cond_d4

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c1

    :cond_d4
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :cond_dc
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_e3
    if-ge v6, v3, :cond_67

    const-string v15, "A:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    const/4 v7, 0x0

    :goto_fe
    const/16 v15, 0xa

    if-ge v7, v15, :cond_111

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_fe

    :cond_111
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e3

    :cond_119
    const-string v15, "  "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " times, "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " ms"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_147
    if-ge v6, v4, :cond_1cf

    const-string v15, "    "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " starts"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_172
    const/16 v15, 0x9

    if-ge v7, v15, :cond_1a3

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    if-eqz v15, :cond_19c

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v15, 0x2d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_19c
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v8, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_172

    :cond_1a3
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    if-eqz v15, :cond_1c6

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ">="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c6
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_147

    :cond_1cf
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_1d6
    if-ge v6, v3, :cond_67

    const-string v15, "    "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    const-string v15, ": fully drawn "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1f8
    const/16 v15, 0x9

    if-ge v7, v15, :cond_22d

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    if-eqz v15, :cond_224

    if-eqz v9, :cond_22b

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_209
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v15, 0x2d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_224
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v8, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f8

    :cond_22b
    const/4 v9, 0x1

    goto :goto_209

    :cond_22d
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    if-eqz v15, :cond_252

    if-eqz v9, :cond_23c

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23c
    const-string v15, ">="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_252
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d6
.end method

.method private filterHistoryStats()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2b

    const/4 v3, 0x0

    :try_start_19
    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_26

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_2e
    .catchall {:try_start_19 .. :try_end_24} :catchall_2b

    add-int/lit8 v0, v0, -0x1

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_29
    :try_start_29
    monitor-exit v4

    return-void

    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v3

    :catch_2e
    move-exception v3

    goto :goto_26
.end method

.method private getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1    # Ljava/lang/String;

    const/16 v7, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v4

    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-eqz p1, :cond_18

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v7, :cond_34

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v7, :cond_45

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_4e

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catchall_4e
    move-exception v3

    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v3
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .registers 7
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/android/server/am/UsageStatsService;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method

.method public static getService()Lcom/android/internal/app/IUsageStats;
    .registers 2

    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    :goto_6
    return-object v1

    :cond_7
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    goto :goto_6
.end method

.method private getUsageStatsFileListFLOCK()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v3, 0x0

    :cond_9
    return-object v3

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v5, :cond_9

    aget-object v2, v0, v4

    const-string v6, "usage-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_21
    const-string v6, ".bak"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1e

    :cond_34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .registers 8
    .param p0    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    :cond_8
    :goto_8
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_11

    return-object v2

    :cond_11
    add-int/2addr v4, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_8

    add-int v5, v4, v1

    new-array v3, v5, [B

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto :goto_8
.end method

.method private readHistoryStatsFLOCK(Landroid/util/AtomicFile;)V
    .registers 17
    .param p1    # Landroid/util/AtomicFile;

    const/4 v4, 0x0

    :try_start_1
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v9, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_13
    const/4 v12, 0x2

    if-eq v3, v12, :cond_1b

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_13

    :cond_1b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "usage-history"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4c

    const/4 v10, 0x0

    :cond_28
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_9a

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const-string v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    const/4 v12, 0x2

    if-ne v1, v12, :cond_52

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_48} :catch_ab
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_48} :catch_cc
    .catchall {:try_start_1 .. :try_end_48} :catchall_ef

    move-result-object v10

    :cond_49
    :goto_49
    const/4 v12, 0x1

    if-ne v3, v12, :cond_28

    :cond_4c
    if-eqz v4, :cond_51

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_f6

    :cond_51
    :goto_51
    return-void

    :cond_52
    :try_start_52
    const-string v12, "comp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    const/4 v12, 0x3

    if-ne v1, v12, :cond_49

    if-eqz v10, :cond_49

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    const-string v13, "lrt"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_6c} :catch_ab
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6c} :catch_cc
    .catchall {:try_start_52 .. :try_end_6c} :catchall_ef

    move-result-object v7

    if-eqz v0, :cond_49

    if-eqz v7, :cond_49

    :try_start_71
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v13, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_78} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_78} :catch_ab
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_78} :catch_cc
    .catchall {:try_start_71 .. :try_end_78} :catchall_ef

    :try_start_78
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    if-nez v8, :cond_8c

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v13

    goto :goto_49

    :catchall_95
    move-exception v12

    monitor-exit v13
    :try_end_97
    .catchall {:try_start_78 .. :try_end_97} :catchall_95

    :try_start_97
    throw v12
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_98} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_98} :catch_ab
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_98} :catch_cc
    .catchall {:try_start_97 .. :try_end_98} :catchall_ef

    :catch_98
    move-exception v12

    goto :goto_49

    :cond_9a
    const/4 v12, 0x3

    if-ne v3, v12, :cond_49

    :try_start_9d
    const-string v12, "pkg"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_a6} :catch_ab
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a6} :catch_cc
    .catchall {:try_start_9d .. :try_end_a6} :catchall_ef

    move-result v12

    if-eqz v12, :cond_49

    const/4 v10, 0x0

    goto :goto_49

    :catch_ab
    move-exception v2

    :try_start_ac
    const-string v12, "UsageStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading history stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_ac .. :try_end_c4} :catchall_ef

    if-eqz v4, :cond_51

    :try_start_c6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_51

    :catch_ca
    move-exception v12

    goto :goto_51

    :catch_cc
    move-exception v2

    :try_start_cd
    const-string v12, "UsageStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading history stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_cd .. :try_end_e5} :catchall_ef

    if-eqz v4, :cond_51

    :try_start_e7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ec

    goto/16 :goto_51

    :catch_ec
    move-exception v12

    goto/16 :goto_51

    :catchall_ef
    move-exception v12

    if-eqz v4, :cond_f5

    :try_start_f2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f9

    :cond_f5
    :goto_f5
    throw v12

    :catch_f6
    move-exception v12

    goto/16 :goto_51

    :catch_f9
    move-exception v13

    goto :goto_f5
.end method

.method private readHistoryStatsFromFile()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->readHistoryStatsFLOCK(Landroid/util/AtomicFile;)V

    :cond_14
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .registers 9
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/16 v5, 0x3f0

    if-eq v4, v5, :cond_14

    const-string v5, "UsageStats"

    const-string v6, "Usage stats version changed; dropping"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :cond_14
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_18
    if-lez v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    new-instance v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2a
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_18

    :catchall_31
    move-exception v5

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v5
.end method

.method private readStatsFromFile()V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0, v1}, Lcom/android/server/am/UsageStatsService;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_17
    .catchall {:try_start_5 .. :try_end_e} :catchall_3b

    :goto_e
    :try_start_e
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_3b

    return-void

    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17
    .catchall {:try_start_10 .. :try_end_16} :catchall_3b

    goto :goto_e

    :catch_17
    move-exception v0

    :try_start_18
    const-string v2, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reading data from file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catchall_3b
    move-exception v2

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0    # [Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_14

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_10
    return v4

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private static scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0    # [Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p0, :cond_15

    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    :cond_15
    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private writeHistoryStatsFLOCK(Landroid/util/AtomicFile;)V
    .registers 12
    .param p1    # Landroid/util/AtomicFile;

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v6, "utf-8"

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const-string v7, "usage-history"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_98

    const/4 v3, 0x0

    :goto_28
    :try_start_28
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_87

    const/4 v6, 0x0

    const-string v8, "pkg"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v8, 0x0

    const-string v9, "name"

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    const/4 v4, 0x0

    :goto_4d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_7e

    const/4 v6, 0x0

    const-string v8, "comp"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v8, 0x0

    const-string v9, "lrt"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v8, "comp"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_7e
    const/4 v6, 0x0

    const-string v8, "pkg"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_28 .. :try_end_88} :catchall_95

    const/4 v6, 0x0

    :try_start_89
    const-string v7, "usage-history"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_94} :catch_98

    :cond_94
    :goto_94
    return-void

    :catchall_95
    move-exception v6

    :try_start_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    :try_start_97
    throw v6
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_98} :catch_98

    :catch_98
    move-exception v1

    const-string v6, "UsageStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing history stats"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_94

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_94
.end method

.method private writeStatsFLOCK(Ljava/io/File;)V
    .registers 5
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToParcelFLOCK(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_20

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_20
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private writeStatsToFile(ZZ)V
    .registers 15
    .param p1    # Z
    .param p2    # Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v8

    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_37

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v1, v8, :cond_3a

    move v4, v6

    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-nez p1, :cond_4f

    if-nez v4, :cond_3c

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0x1b7740

    cmp-long v8, v8, v10

    if-gez v8, :cond_3c

    :cond_36
    :goto_36
    return-void

    :catchall_37
    move-exception v6

    :try_start_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v6

    :cond_3a
    move v4, v7

    goto :goto_1f

    :cond_3c
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_36

    new-instance v6, Lcom/android/server/am/UsageStatsService$1;

    const-string v7, "UsageStatsService_DiskWriter"

    invoke-direct {v6, p0, v7}, Lcom/android/server/am/UsageStatsService$1;-><init>(Lcom/android/server/am/UsageStatsService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/UsageStatsService$1;->start()V

    goto :goto_36

    :cond_4f
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_52
    const-string v6, "usage-"

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    if-eqz v6, :cond_a4

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a4

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".bak"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9f

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_a4

    const-string v6, "UsageStats"

    const-string v8, "Failed to persist new stats"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_36

    :catchall_9c
    move-exception v6

    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_52 .. :try_end_9e} :catchall_9c

    throw v6

    :cond_9f
    :try_start_9f
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_9c

    :cond_a4
    :try_start_a4
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->writeStatsFLOCK(Ljava/io/File;)V

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v4, :cond_cc

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    monitor-enter v8
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b8} :catch_e0
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_9c

    :try_start_b8
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v8
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_dd

    :try_start_be
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    :cond_cc
    if-nez v4, :cond_d0

    if-eqz p2, :cond_d5

    :cond_d0
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->writeHistoryStatsFLOCK(Landroid/util/AtomicFile;)V

    :cond_d5
    if-eqz v0, :cond_da

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_da} :catch_e0
    .catchall {:try_start_be .. :try_end_da} :catchall_9c

    :cond_da
    :goto_da
    :try_start_da
    monitor-exit v7
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_9c

    goto/16 :goto_36

    :catchall_dd
    move-exception v6

    :try_start_de
    monitor-exit v8
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw v6
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e0} :catch_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_9c

    :catch_e0
    move-exception v5

    :try_start_e1
    const-string v6, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed writing stats to file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_da

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_107
    .catchall {:try_start_e1 .. :try_end_107} :catchall_9c

    goto :goto_da
.end method

.method private writeStatsToParcelFLOCK(Landroid/os/Parcel;)V
    .registers 8
    .param p1    # Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v4, 0x3f0

    :try_start_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_19

    :catchall_34
    move-exception v4

    monitor-exit v5
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v4

    :cond_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump UsageStats from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    return-void

    :cond_3f
    const-string v10, "--checkin"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v10, "-c"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8d

    :cond_4f
    const/4 v4, 0x1

    :goto_50
    if-nez v3, :cond_5a

    const-string v10, "-d"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8f

    :cond_5a
    const/4 v1, 0x1

    :goto_5b
    const-string v10, "--packages"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_68

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    :cond_68
    const/4 v8, 0x0

    if-eqz v9, :cond_91

    const-string v10, "*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9b

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    array-length v5, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v5, :cond_9b

    aget-object v6, v0, v2

    if-nez v8, :cond_87

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    :cond_87
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_8d
    const/4 v4, 0x0

    goto :goto_50

    :cond_8f
    const/4 v1, 0x0

    goto :goto_5b

    :cond_91
    if-eqz v3, :cond_9b

    const-string v10, "UsageStats"

    const-string v11, "Checkin without packages"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_9b
    iget-object v11, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_9e
    invoke-direct {p0, p2, v4, v1, v8}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V

    monitor-exit v11

    goto :goto_3e

    :catchall_a3
    move-exception v10

    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_a3

    throw v10
.end method

.method public enforceCallingPermission()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a
.end method

.method public getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .registers 12

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-gtz v9, :cond_15

    monitor-exit v10

    :goto_14
    return-object v8

    :cond_15
    new-array v8, v9, [Lcom/android/internal/os/PkgUsageStats;

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v9, :cond_45

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    if-eqz v7, :cond_33

    iget-wide v3, v7, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    iget v2, v7, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    :cond_33
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    aput-object v0, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_45
    monitor-exit v10

    goto :goto_14

    :catchall_47
    move-exception v0

    monitor-exit v10
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_47

    throw v0
.end method

.method public getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;
    .registers 11
    .param p1    # Landroid/content/ComponentName;

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_14
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v6, :cond_2d

    if-nez v5, :cond_2d

    monitor-exit v7

    goto :goto_10

    :catchall_2a
    move-exception v0

    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    if-eqz v6, :cond_3c

    :try_start_2f
    iget v2, v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    :goto_31
    if-eqz v6, :cond_3e

    iget-wide v3, v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    :goto_35
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_2a

    goto :goto_10

    :cond_3c
    const/4 v2, 0x0

    goto :goto_31

    :cond_3e
    const-wide/16 v3, 0x0

    goto :goto_35
.end method

.method public monitorPackages()V
    .registers 5

    new-instance v0, Lcom/android/server/am/UsageStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/UsageStatsService$2;-><init>(Lcom/android/server/am/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->filterHistoryStats()V

    return-void
.end method

.method public noteFullyDrawnTime(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addFullyDrawnTime(Ljava/lang/String;I)V

    :cond_24
    monitor-exit v3

    goto :goto_c

    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public noteLaunchTime(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchTime(Ljava/lang/String;I)V

    :cond_24
    monitor-exit v3

    goto :goto_c

    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 8
    .param p1    # Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_f

    :try_start_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_f
    monitor-exit v3

    :goto_10
    return-void

    :cond_11
    iget-boolean v2, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-nez v2, :cond_1a

    monitor-exit v3

    goto :goto_10

    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v2

    :cond_1a
    const/4 v2, 0x0

    :try_start_1b
    iput-boolean v2, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    if-nez v1, :cond_41

    const-string v2, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package stats for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_10

    :cond_41
    invoke-virtual {v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_1b .. :try_end_45} :catchall_17

    invoke-direct {p0, v4, v4}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    goto :goto_10
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;)V
    .registers 12
    .param p1    # Landroid/content/ComponentName;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz p1, :cond_10

    :try_start_a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_10
    monitor-exit v7

    :goto_11
    return-void

    :cond_12
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-boolean v8, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-eqz v8, :cond_2f

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v8, :cond_2f

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    :cond_2f
    if-eqz v4, :cond_91

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    move v3, v5

    :goto_3e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    iput-object v1, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    if-nez v2, :cond_5d

    new-instance v2, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-direct {v2, p0}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;)V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    if-nez v4, :cond_93

    :goto_61
    invoke-virtual {v2, v8, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updateResume(Ljava/lang/String;Z)V

    if-nez v3, :cond_6b

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchCount(Ljava/lang/String;)V

    :cond_6b
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_7f

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    goto :goto_11

    :catchall_8e
    move-exception v5

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_a .. :try_end_90} :catchall_8e

    throw v5

    :cond_91
    move v3, v6

    goto :goto_3e

    :cond_93
    move v5, v6

    goto :goto_61
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v0, "usagestats"

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public shutdown()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_a
    const-string v0, "UsageStats"

    const-string v1, "Writing usage stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    return-void
.end method
