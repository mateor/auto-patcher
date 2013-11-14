.class public Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final DATA_PATH:Ljava/io/File;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private final mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field mHandler:Landroid/os/Handler;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field private mMemLowThreshold:J

.field private mResolver:Landroid/content/ContentResolver;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    iput-boolean v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    new-instance v1, Landroid/os/StatFs;

    sget-object v2, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    sget-object v1, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .registers 2
    .param p0    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .registers 4
    .param p0    # Lcom/android/server/DeviceStorageMonitorService;
    .param p1    # Z
    .param p2    # J

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method private final cancelFullNotification()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final cancelNotification()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final checkMemory(Z)V
    .registers 12
    .param p1    # Z

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v9, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void

    :cond_23
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7b

    if-eqz p1, :cond_66

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_54

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    :cond_54
    :goto_54
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_90

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_1c

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_1c

    :cond_66
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_54

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    iput-boolean v9, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_54

    :cond_7b
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_54

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_54

    :cond_90
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    iput-boolean v8, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_1c
.end method

.method private final clearCache()V
    .registers 7

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    :try_start_f
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_20
.end method

.method private postCheckMemoryMsg(ZJ)V
    .registers 9
    .param p1    # Z
    .param p2    # J

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_16

    move v0, v1

    :goto_e
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_16
    move v0, v2

    goto :goto_e
.end method

.method private final restatDataDir()V
    .registers 21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2b} :catch_129

    :goto_2b
    const-string v15, "debug.freemem"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_41

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    :cond_41
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "sys_free_storage_log_interval"

    const-wide/16 v17, 0x2d0

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    const-wide/16 v17, 0x3c

    mul-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    mul-long v7, v15, v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6d

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sub-long v15, v2, v15

    cmp-long v15, v15, v7

    if-ltz v15, :cond_ee

    :cond_6d
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v11, -0x1

    const-wide/16 v9, -0x1

    :try_start_75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_94} :catch_126

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v11, v15, v17

    :goto_9c
    :try_start_9c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v16, Lcom/android/server/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_bb} :catch_124

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v9, v15, v17

    :goto_c3
    const/16 v15, 0xaba

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_ee
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "disk_free_change_reporting_threshold"

    const-wide/32 v17, 0x200000

    invoke-static/range {v15 .. v18}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    cmp-long v15, v5, v13

    if-gtz v15, :cond_110

    neg-long v15, v13

    cmp-long v15, v5, v15

    if-gez v15, :cond_123

    :cond_110
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    const/16 v15, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_123
    return-void

    :catch_124
    move-exception v15

    goto :goto_c3

    :catch_126
    move-exception v15

    goto/16 :goto_9c

    :catch_129
    move-exception v15

    goto/16 :goto_2b
.end method

.method private final sendFullNotification()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private final sendNotification()V
    .registers 14

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xab9

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_13
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "memory"

    iget-wide v11, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403fc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v3, 0x10403fd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    const v0, 0x10805b9

    iput v0, v9, Landroid/app/Notification;->icon:I

    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_6e
    const-string v0, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto :goto_13
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    const-string v0, "Current DeviceStorageMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTotalMemory="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastReportedFreeMem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastReportedFreeMemTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  mLowMemFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMemFullFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mClearSucceeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mClearingCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mMemLowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMemFullThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMemCacheTrimToThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method public getMemoryLowThreshold()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryLow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    return v0
.end method

.method public updateMemory()V
    .registers 5

    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_8
.end method
