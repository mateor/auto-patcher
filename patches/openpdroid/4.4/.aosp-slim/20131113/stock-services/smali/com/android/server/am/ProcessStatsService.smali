.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 5
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Ljava/io/File;

    invoke-direct {p0}, Lcom/android/internal/app/IProcessStats$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/android/internal/app/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0    # Ljava/io/PrintWriter;

    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--details] [--full-details] [--current] [--hours] [--active]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--commit] [--reset] [--clear] [--write] [-h] [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 57
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v21, 0x0

    const/16 v32, 0x0

    const/16 v22, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_624

    const/4 v8, 0x0

    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v9, v3

    const/4 v10, 0x1

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    if-eqz p3, :cond_386

    const/16 v44, 0x0

    :goto_2d
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v44

    if-ge v0, v3, :cond_386

    aget-object v33, p3, v44

    const-string v3, "--checkin"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const/16 v45, 0x1

    :cond_42
    :goto_42
    add-int/lit8 v44, v44, 0x1

    goto :goto_2d

    :cond_45
    const-string v3, "-c"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    const/16 v46, 0x1

    goto :goto_42

    :cond_52
    const-string v3, "--csv"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/16 v47, 0x1

    goto :goto_42

    :cond_5f
    const-string v3, "--csv-screen"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    add-int/lit8 v44, v44, 0x1

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v44

    if-lt v0, v3, :cond_7d

    const-string v3, "Error: argument required for --csv-screen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v50, v0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, p3, v44

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    if-nez v7, :cond_c1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v39, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_7c

    :cond_c1
    const/4 v3, 0x0

    aget-boolean v6, v50, v3

    goto/16 :goto_42

    :cond_c6
    const-string v3, "--csv-mem"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12e

    add-int/lit8 v44, v44, 0x1

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v44

    if-lt v0, v3, :cond_e4

    const-string v3, "Error: argument required for --csv-mem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_7c

    :cond_e4
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v50, v0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v44

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v9

    if-nez v9, :cond_129

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v39, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_129
    const/4 v3, 0x0

    aget-boolean v8, v50, v3

    goto/16 :goto_42

    :cond_12e
    const-string v3, "--csv-proc"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    add-int/lit8 v44, v44, 0x1

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v44

    if-lt v0, v3, :cond_14d

    const-string v3, "Error: argument required for --csv-proc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_14d
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v50, v0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v44

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    if-nez v11, :cond_192

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v39, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_192
    const/4 v3, 0x0

    aget-boolean v10, v50, v3

    goto/16 :goto_42

    :cond_197
    const-string v3, "--details"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    const/16 v36, 0x1

    goto/16 :goto_42

    :cond_1a5
    const-string v3, "--full-details"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    const/16 v37, 0x1

    goto/16 :goto_42

    :cond_1b3
    const-string v3, "--hours"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fa

    add-int/lit8 v44, v44, 0x1

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v44

    if-lt v0, v3, :cond_1d2

    const-string v3, "Error: argument required for --hours"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_1d2
    :try_start_1d2
    aget-object v3, p3, v44

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d7
    .catch Ljava/lang/NumberFormatException; {:try_start_1d2 .. :try_end_1d7} :catch_1da

    move-result v32

    goto/16 :goto_42

    :catch_1da
    move-exception v38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --hours argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_1fa
    const-string v3, "--active"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20a

    const/16 v22, 0x1

    const/16 v35, 0x1

    goto/16 :goto_42

    :cond_20a
    const-string v3, "--current"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_218

    const/16 v35, 0x1

    goto/16 :goto_42

    :cond_218
    const-string v3, "--commit"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_245

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    const-string v3, "Process stats committed."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_7c

    :catchall_242
    move-exception v3

    monitor-exit v4
    :try_end_244
    .catchall {:try_start_227 .. :try_end_244} :catchall_242

    throw v3

    :cond_245
    const-string v3, "--reset"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_268

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    const-string v3, "Process stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_7c

    :catchall_265
    move-exception v3

    monitor-exit v4
    :try_end_267
    .catchall {:try_start_254 .. :try_end_267} :catchall_265

    throw v3

    :cond_268
    const-string v3, "--clear"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v43

    if-eqz v43, :cond_2ab

    const/16 v40, 0x0

    :goto_28e
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v40

    if-ge v0, v3, :cond_2ab

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v40, v40, 0x1

    goto :goto_28e

    :cond_2ab
    const-string v3, "All process stats cleared."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_7c

    :catchall_2b5
    move-exception v3

    monitor-exit v4
    :try_end_2b7
    .catchall {:try_start_277 .. :try_end_2b7} :catchall_2b5

    throw v3

    :cond_2b8
    const-string v3, "--write"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_2c7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const-string v3, "Process stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_7c

    :catchall_2d4
    move-exception v3

    monitor-exit v4
    :try_end_2d6
    .catchall {:try_start_2c7 .. :try_end_2d6} :catchall_2d4

    throw v3

    :cond_2d7
    const-string v3, "--read"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_300

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_2e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    const-string v3, "Process stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    goto/16 :goto_7c

    :catchall_2fd
    move-exception v3

    monitor-exit v4
    :try_end_2ff
    .catchall {:try_start_2e6 .. :try_end_2ff} :catchall_2fd

    throw v3

    :cond_300
    const-string v3, "-h"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30f

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_30f
    const-string v3, "-a"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31f

    const/16 v36, 0x1

    const/16 v21, 0x1

    goto/16 :goto_42

    :cond_31f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34f

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_34f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_34f
    :try_start_34f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v49

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    move-object/from16 v0, v49

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_35e
    .catch Landroid/os/RemoteException; {:try_start_34f .. :try_end_35e} :catch_621

    move-result v3

    if-ltz v3, :cond_365

    move-object/from16 v14, v33

    const/16 v36, 0x1

    :cond_365
    :goto_365
    if-nez v14, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_7c

    :cond_386
    if-eqz v47, :cond_3f9

    const-string v3, "Processes running summed over"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v6, :cond_3a9

    const/16 v44, 0x0

    :goto_393
    array-length v3, v7

    move/from16 v0, v44

    if-ge v0, v3, :cond_3a9

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, v7, v44

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v44, v44, 0x1

    goto :goto_393

    :cond_3a9
    if-nez v8, :cond_3c3

    const/16 v44, 0x0

    :goto_3ad
    array-length v3, v9

    move/from16 v0, v44

    if-ge v0, v3, :cond_3c3

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, v9, v44

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v44, v44, 0x1

    goto :goto_3ad

    :cond_3c3
    if-nez v10, :cond_3e1

    const/16 v44, 0x0

    :goto_3c7
    array-length v3, v11

    move/from16 v0, v44

    if-ge v0, v3, :cond_3e1

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v4, v11, v44

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v44, v44, 0x1

    goto :goto_3c7

    :cond_3e1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    :try_start_3f0
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    monitor-exit v16

    goto/16 :goto_7c

    :catchall_3f6
    move-exception v3

    monitor-exit v16
    :try_end_3f8
    .catchall {:try_start_3f0 .. :try_end_3f8} :catchall_3f6

    throw v3

    :cond_3f9
    if-eqz v32, :cond_46f

    mul-int/lit8 v3, v32, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sget-wide v16, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    sub-long v3, v3, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v48

    if-nez v48, :cond_41b

    const-string v3, "Unable to build stats!"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c

    :cond_41b
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    new-instance v52, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, v52

    invoke-virtual {v15, v0}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_443

    const-string v3, "Failure reading: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c

    :cond_443
    if-eqz v46, :cond_44c

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_7c

    :cond_44c
    if-nez v36, :cond_450

    if-eqz v37, :cond_462

    :cond_450
    if-nez v37, :cond_45f

    const/16 v20, 0x1

    :goto_454
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto/16 :goto_7c

    :cond_45f
    const/16 v20, 0x0

    goto :goto_454

    :cond_462
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v22

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto/16 :goto_7c

    :cond_46f
    const/16 v51, 0x0

    if-eqz v35, :cond_475

    if-eqz v45, :cond_5b6

    :cond_475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v45, :cond_4fa

    const/4 v3, 0x1

    :goto_481
    :try_start_481
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v43

    if-eqz v43, :cond_5af

    const/16 v44, 0x0

    :goto_48b
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I
    :try_end_48e
    .catchall {:try_start_481 .. :try_end_48e} :catchall_558

    move-result v3

    move/from16 v0, v44

    if-ge v0, v3, :cond_5af

    :try_start_493
    new-instance v41, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v23, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_4fc

    if-nez v45, :cond_4c0

    if-eqz v46, :cond_4c7

    :cond_4c0
    const-string v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4c7
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4f7
    :goto_4f7
    add-int/lit8 v44, v44, 0x1

    goto :goto_48b

    :cond_4fa
    const/4 v3, 0x0

    goto :goto_481

    :cond_4fc
    invoke-virtual/range {v41 .. v41}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    const-string v3, ".ci"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v45, :cond_510

    if-eqz v46, :cond_561

    :cond_510
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_517
    if-eqz v45, :cond_4f7

    invoke-virtual/range {v41 .. v41}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, ".ci"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_53c
    .catch Ljava/lang/Throwable; {:try_start_493 .. :try_end_53c} :catch_53d
    .catchall {:try_start_493 .. :try_end_53c} :catchall_558

    goto :goto_4f7

    :catch_53d
    move-exception v38

    :try_start_53e
    const-string v3, "**** FAILURE DUMPING STATE: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_557
    .catchall {:try_start_53e .. :try_end_557} :catchall_558

    goto :goto_4f7

    :catchall_558
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_561
    if-eqz v51, :cond_59f

    :try_start_563
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_566
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v34, :cond_57f

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_57f
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v37, :cond_5a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, p2

    move-object/from16 v25, v14

    move-wide/from16 v26, v12

    move/from16 v30, v22

    invoke-virtual/range {v23 .. v30}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto/16 :goto_517

    :cond_59f
    const/16 v51, 0x1

    goto :goto_566

    :cond_5a2
    move-object/from16 v24, p2

    move-object/from16 v25, v14

    move-wide/from16 v26, v12

    move/from16 v28, v22

    invoke-virtual/range {v23 .. v28}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_5ad
    .catch Ljava/lang/Throwable; {:try_start_563 .. :try_end_5ad} :catch_53d
    .catchall {:try_start_563 .. :try_end_5ad} :catchall_558

    goto/16 :goto_517

    :cond_5af
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5b6
    if-nez v45, :cond_7c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    if-eqz v46, :cond_5ce

    :try_start_5bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_5c8
    :goto_5c8
    monitor-exit v4

    goto/16 :goto_7c

    :catchall_5cb
    move-exception v3

    monitor-exit v4
    :try_end_5cd
    .catchall {:try_start_5bf .. :try_end_5cd} :catchall_5cb

    throw v3

    :cond_5ce
    if-eqz v51, :cond_5da

    :try_start_5d0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "CURRENT STATS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5da
    if-nez v36, :cond_5de

    if-eqz v37, :cond_60f

    :cond_5de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v24, v0

    if-nez v37, :cond_60c

    const/16 v29, 0x1

    :goto_5e8
    move-object/from16 v25, p2

    move-object/from16 v26, v14

    move-wide/from16 v27, v12

    move/from16 v30, v21

    move/from16 v31, v22

    invoke-virtual/range {v24 .. v31}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    if-eqz v21, :cond_5c8

    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5c8

    :cond_60c
    const/16 v29, 0x0

    goto :goto_5e8

    :cond_60f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v24, v0

    move-object/from16 v25, p2

    move-object/from16 v26, v14

    move-wide/from16 v27, v12

    move/from16 v29, v22

    invoke-virtual/range {v24 .. v29}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_620
    .catchall {:try_start_5d0 .. :try_end_620} :catchall_5cb

    goto :goto_5c8

    :catch_621
    move-exception v3

    goto/16 :goto_365

    :array_624
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1    # I
    .param p2    # Z
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v6, v3

    if-gt v6, p1, :cond_d

    :cond_b
    const/4 v4, 0x0

    :goto_c
    return-object v4

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1e
    array-length v6, v3

    if-ge v5, v6, :cond_40

    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_34

    const-string v6, ".ci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    :cond_31
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_34
    if-nez p2, :cond_3c

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    :cond_3c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_40
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_c
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .registers 16
    .param p0    # [Ljava/lang/String;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Z
    .param p4    # [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v10, 0x2c

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v2, v9, :cond_80

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_2a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1b
    if-eq v0, v10, :cond_2c

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_2c

    const/16 v9, 0x20

    if-eq v0, v9, :cond_2c

    if-eqz v0, :cond_2c

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2a
    move v0, v8

    goto :goto_1b

    :cond_2c
    if-ne v0, v10, :cond_6d

    const/4 v3, 0x1

    :goto_2f
    if-nez v5, :cond_6f

    aput-boolean v3, p3, v8

    :cond_33
    add-int/lit8 v9, v2, -0x1

    if-ge v5, v9, :cond_7d

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    :goto_3c
    array-length v9, p0

    if-ge v4, v9, :cond_4f

    aget-object v9, p0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :cond_4f
    if-eqz v7, :cond_7d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid word \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p4, v8

    :cond_6c
    :goto_6c
    return-object v1

    :cond_6d
    move v3, v8

    goto :goto_2f

    :cond_6f
    if-eqz v0, :cond_33

    aget-boolean v9, p3, v8

    if-eq v9, v3, :cond_33

    const-string v9, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v9, p4, v8

    goto :goto_6c

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_7d
    add-int/lit8 v5, v2, 0x1

    goto :goto_27

    :cond_80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [I

    const/4 v2, 0x0

    :goto_87
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6c

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    aput v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_87
.end method

.method private updateFile()V
    .registers 6

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    return-void
.end method

.method private writeStateLocked(Z)V
    .registers 4
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    goto :goto_4
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump procstats from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    return-void

    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .registers 22
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # [I
    .param p5    # Z
    .param p6    # [I
    .param p7    # Z
    .param p8    # [I
    .param p9    # J
    .param p11    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x0

    move-object v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    if-eqz p2, :cond_1d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    move-object v0, p1

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public getCurrentMemoryState()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_13
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_52

    :try_start_16
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_4f

    if-eqz p1, :cond_79

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_2a
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_52

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_36
    if-ltz v3, :cond_79

    :try_start_38
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-static {v6, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4c} :catch_59
    .catchall {:try_start_38 .. :try_end_4c} :catchall_52

    :goto_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    :catchall_4f
    move-exception v5

    :try_start_50
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v5

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :catch_59
    move-exception v1

    :try_start_5a
    const-string v6, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure opening procstat file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_52

    goto :goto_4c

    :cond_79
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    return-object v5
.end method

.method public getMemFactorLocked()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .registers 26
    .param p1    # J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_10d
    .catchall {:try_start_1c .. :try_end_27} :catchall_128

    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v21, v0

    sub-long v4, v19, v21

    monitor-exit v18
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_125

    cmp-long v17, v4, p1

    if-gez v17, :cond_184

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    :try_start_6b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_184

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_184

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v17, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v11, v17, -0x1

    :goto_99
    if-ltz v11, :cond_179

    iget-wide v0, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v17, v0

    iget-wide v0, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    cmp-long v17, v17, p1

    if-gez v17, :cond_179

    new-instance v9, Landroid/util/AtomicFile;

    new-instance v18, Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v11, v11, -0x1

    new-instance v12, Lcom/android/internal/app/ProcessStats;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_133

    invoke-virtual {v15, v12}, Lcom/android/internal/app/ProcessStats;->add(Lcom/android/internal/app/ProcessStats;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Added stats: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v17, ", over "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v17, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v17, "ProcessStatsService"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_10c} :catch_10d
    .catchall {:try_start_6b .. :try_end_10c} :catchall_128

    goto :goto_99

    :catch_10d
    move-exception v7

    :try_start_10e
    const-string v17, "ProcessStatsService"

    const-string v18, "Failed building output pipe"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/16 v17, 0x0

    :goto_124
    return-object v17

    :catchall_125
    move-exception v17

    :try_start_126
    monitor-exit v18
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw v17
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_128} :catch_10d
    .catchall {:try_start_127 .. :try_end_128} :catchall_128

    :catchall_128
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    :cond_133
    :try_start_133
    const-string v18, "ProcessStatsService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failure reading "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "; "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    :cond_179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v6, v0}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_184
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    new-instance v16, Lcom/android/server/am/ProcessStatsService$3;

    const-string v17, "ProcessStats pipe output"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    const/16 v17, 0x0

    aget-object v17, v8, v17
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_1a3} :catch_10d
    .catchall {:try_start_133 .. :try_end_1a3} :catchall_128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_124
.end method

.method public isMemFactorLowered()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    throw v0
.end method

.method performWriteState()V
    .registers 7

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v0, :cond_e

    monitor-exit v5

    :goto_d
    return-void

    :cond_e
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_38

    const/4 v3, 0x0

    :try_start_1b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2c} :catch_3b
    .catchall {:try_start_1b .. :try_end_2c} :catchall_52

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4

    :catch_3b
    move-exception v1

    :try_start_3c
    const-string v4, "ProcessStatsService"

    const-string v5, "Error writing process statistics"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_52

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    :catchall_52
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z
    .registers 9
    .param p1    # Lcom/android/internal/app/ProcessStats;
    .param p2    # Landroid/util/AtomicFile;

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    iget-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_48

    const-string v3, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2a

    :goto_29
    return v2

    :catch_2a
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    const-string v3, "ProcessStatsService"

    const-string v4, "Error reading process statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_48
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public setMemFactorLocked(IZJ)Z
    .registers 22
    .param p1    # I
    .param p2    # Z
    .param p3    # J

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    move/from16 v0, p1

    if-ge v0, v11, :cond_b6

    const/4 v11, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    if-eqz p2, :cond_17

    add-int/lit8 p1, p1, 0x4

    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v0, p1

    if-eq v0, v11, :cond_c1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_43

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v12, v12, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    aget-wide v13, v11, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v15, v15, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    sub-long v15, p3, v15

    add-long/2addr v13, v15

    aput-wide v13, v11, v12

    :cond_43
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move/from16 v0, p1

    iput v0, v11, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    const/4 v3, 0x0

    :goto_5e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v3, v11, :cond_bf

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    const/4 v4, 0x0

    :goto_6b
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v4, v11, :cond_bc

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$PackageState;

    iget-object v9, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    :goto_7a
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v5, v11, :cond_b9

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v11

    if-eqz v11, :cond_b3

    iget v11, v8, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_99

    const/4 v11, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    :cond_99
    iget v11, v8, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a6

    const/4 v11, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    :cond_a6
    iget v11, v8, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b3

    const/4 v11, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    :cond_b3
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    :cond_b6
    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_bf
    const/4 v11, 0x1

    :goto_c0
    return v11

    :cond_c1
    const/4 v11, 0x0

    goto :goto_c0
.end method

.method public shouldWriteNowLocked(J)Z
    .registers 10
    .param p1    # J

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v3, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-lez v1, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v3, v3, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v5, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public shutdownLocked()V
    .registers 3

    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    return-void

    :cond_b
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method public writeStateAsyncLocked()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    return-void
.end method

.method public writeStateLocked(ZZ)V
    .registers 10
    .param p1    # Z
    .param p2    # Z

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v2, :cond_3e

    :cond_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    if-eqz p2, :cond_27

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    :cond_27
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    :cond_3e
    if-eqz p2, :cond_48

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    :cond_48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    const-string v2, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared write state in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_81

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v3

    :goto_80
    return-void

    :cond_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_86

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    goto :goto_80

    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v2
.end method

.method public writeStateSyncLocked()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    return-void
.end method
