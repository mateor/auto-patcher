.class public Lcom/android/server/SamplingProfilerService;
.super Landroid/os/Binder;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field public static final SNAPSHOT_DIR:Ljava/lang/String; = "/data/snapshots"

.field private static final TAG:Ljava/lang/String; = "SamplingProfilerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private snapshotObserver:Landroid/os/FileObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/SamplingProfilerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/SamplingProfilerService;->registerSettingObserver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/server/SamplingProfilerService;->startWorking(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SamplingProfilerService;Ljava/io/File;Landroid/os/DropBoxManager;)V
    .registers 3
    .param p0    # Lcom/android/server/SamplingProfilerService;
    .param p1    # Ljava/io/File;
    .param p2    # Landroid/os/DropBoxManager;

    invoke-direct {p0, p1, p2}, Lcom/android/server/SamplingProfilerService;->handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V

    return-void
.end method

.method private handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V
    .registers 7
    .param p1    # Ljava/io/File;
    .param p2    # Landroid/os/DropBoxManager;

    :try_start_0
    const-string v1, "SamplingProfilerService"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_a
    .catchall {:try_start_0 .. :try_end_6} :catchall_2e

    :goto_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :catch_a
    move-exception v0

    :try_start_b
    const-string v1, "SamplingProfilerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to dropbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2e

    goto :goto_6

    :catchall_2e
    move-exception v1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method private registerSettingObserver(Landroid/content/Context;)V
    .registers 6
    .param p1    # Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sampling_profiler_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;

    invoke-direct {v3, p0, v0}, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;-><init>(Lcom/android/server/SamplingProfilerService;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private startWorking(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/snapshots"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v1, 0x0

    :goto_14
    if-eqz v2, :cond_21

    array-length v3, v2

    if-ge v1, v3, :cond_21

    aget-object v3, v2, v1

    invoke-direct {p0, v3, v0}, Lcom/android/server/SamplingProfilerService;->handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_21
    new-instance v3, Lcom/android/server/SamplingProfilerService$1;

    const-string v4, "/data/snapshots"

    const/4 v5, 0x4

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/server/SamplingProfilerService$1;-><init>(Lcom/android/server/SamplingProfilerService;Ljava/lang/String;ILandroid/os/DropBoxManager;)V

    iput-object v3, p0, Lcom/android/server/SamplingProfilerService;->snapshotObserver:Landroid/os/FileObserver;

    iget-object v3, p0, Lcom/android/server/SamplingProfilerService;->snapshotObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/SamplingProfilerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "SamplingProfilerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SamplingProfilerService:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Watching directory: /data/snapshots"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
