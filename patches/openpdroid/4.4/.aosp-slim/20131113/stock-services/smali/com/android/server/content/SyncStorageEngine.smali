.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String;

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x3

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_AUTHORITYID:Ljava/lang/String; = "authority_id"

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_EXPEDITED:Ljava/lang/String; = "expedited"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_REASON:Ljava/lang/String; = "reason"

.field private static final XML_ATTR_SOURCE:Ljava/lang/String; = "source"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Landroid/util/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->EVENTS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PERIODIC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Ljava/util/HashMap;

    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "pending.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readPendingOperationsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    return-void
.end method

.method private appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .registers 10
    .param p1    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    const/4 v7, 0x2

    const-string v4, "SyncManagerFile"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v2, 0x0

    :try_start_28
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_47

    move-result-object v2

    :try_start_2e
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_43} :catch_5b
    .catchall {:try_start_2e .. :try_end_43} :catchall_6e

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_6c

    :goto_46
    return-void

    :catch_47
    move-exception v0

    const-string v4, "SyncManagerFile"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v4, "SyncManager"

    const-string v5, "Failed append; writing full file"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    goto :goto_46

    :catch_5b
    move-exception v1

    :try_start_5c
    const-string v4, "SyncManager"

    const-string v5, "Error writing appending operation"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_6e

    :try_start_68
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_46

    :catch_6c
    move-exception v4

    goto :goto_46

    :catchall_6e
    move-exception v4

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    :goto_72
    throw v4

    :catch_73
    move-exception v5

    goto :goto_72
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 6
    .param p0    # J

    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_8

    :cond_19
    const-wide/16 v0, 0xd80

    goto :goto_8
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 5
    .param p1    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .registers 9
    .param p1    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "extra"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "name"

    invoke-interface {p1, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3d

    const-string v3, "type"

    const-string v4, "long"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_37
    :goto_37
    const-string v3, "extra"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    :cond_3d
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_52

    const-string v3, "type"

    const-string v4, "integer"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    :cond_52
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_67

    const-string v3, "type"

    const-string v4, "boolean"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    :cond_67
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_7c

    const-string v3, "type"

    const-string v4, "float"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    :cond_7c
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_91

    const-string v3, "type"

    const-string v4, "double"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    :cond_91
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_a6

    const-string v3, "type"

    const-string v4, "string"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    :cond_a6
    instance-of v3, v2, Landroid/accounts/Account;

    if-eqz v3, :cond_37

    const-string v3, "type"

    const-string v4, "account"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "value1"

    move-object v3, v2

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "value2"

    check-cast v2, Landroid/accounts/Account;

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_37

    :cond_c6
    return-void
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .registers 4
    .param p0    # Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-nez v0, :cond_14

    if-eqz p4, :cond_12

    :cond_12
    move-object v2, v3

    :cond_13
    :goto_13
    return-object v2

    :cond_14
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v2, :cond_13

    if-eqz p4, :cond_20

    :cond_20
    move-object v2, v3

    goto :goto_13
.end method

.method private getAuthorityLocked(Landroid/content/ComponentName;ILjava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v0, :cond_13

    if-eqz p3, :cond_12

    :cond_12
    const/4 v0, 0x0

    :cond_13
    return-object v0
.end method

.method private getCurrentDayLocked()I
    .registers 6

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    :cond_3c
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .param p0    # Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .param p0    # Landroid/database/Cursor;
    .param p1    # Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Z

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-nez v0, :cond_19

    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v2, :cond_42

    if-gez p4, :cond_2e

    iget p4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    iget v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/4 p5, 0x1

    :cond_2e
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Landroid/accounts/Account;ILjava/lang/String;I)V

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p5, :cond_42

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_42
    return-object v2
.end method

.method private getOrCreateAuthorityLocked(Landroid/content/ComponentName;IIZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 8
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v1, :cond_39

    if-gez p3, :cond_27

    iget p3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/4 p4, 0x1

    :cond_27
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Landroid/content/ComponentName;II)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p4, :cond_39

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_39
    return-object v1
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    if-nez v0, :cond_14

    new-instance v0, Landroid/content/SyncStatusInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0    # Landroid/content/Context;

    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    goto :goto_4
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4
    .param p1    # Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_d
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 15

    const/4 v5, 0x0

    const/4 v13, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v6, :cond_49

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_27

    :cond_24
    :goto_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_27
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v0, :cond_24

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v1, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    const-string v2, "cleanup"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v2, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    const/4 v13, 0x1

    goto :goto_24

    :cond_49
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v0, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    const/4 v13, 0x1

    goto :goto_4d

    :cond_64
    return v13
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 3
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 19
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2    # I

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_e} :catch_f7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_e} :catch_101

    move-result v5

    :goto_f
    if-ltz v5, :cond_f6

    const/4 v1, 0x0

    const-string v2, "authority"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const-string v2, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x0

    const-string v2, "syncable"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    const-string v2, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x0

    const-string v2, "package"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x0

    const-string v2, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v15, :cond_10b

    const/4 v3, 0x0

    :goto_5c
    if-nez v8, :cond_62

    const-string v8, "com.google"

    const-string v14, "unknown"

    :cond_62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const-string v1, "SyncManagerFile"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding authority: account="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " auth="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " user="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " enabled="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " syncable="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    if-nez v9, :cond_de

    const-string v1, "SyncManagerFile"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c7

    const-string v1, "SyncManager"

    const-string v2, "Creating entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    if-eqz v7, :cond_111

    if-eqz v8, :cond_111

    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    :goto_d7
    if-lez p2, :cond_de

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_de
    if-eqz v9, :cond_12e

    if-eqz v12, :cond_e8

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11e

    :cond_e8
    const/4 v1, 0x1

    :goto_e9
    iput-boolean v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    const-string v1, "unknown"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    const/4 v1, -0x1

    iput v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    :cond_f6
    :goto_f6
    return-object v9

    :catch_f7
    move-exception v11

    const-string v1, "SyncManager"

    const-string v2, "error parsing the id of the authority"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :catch_101
    move-exception v11

    const-string v1, "SyncManager"

    const-string v2, "the id of the authority is null"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :cond_10b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_5c

    :cond_111
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v13, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/content/ComponentName;IIZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    goto :goto_d7

    :cond_11e
    const/4 v1, 0x0

    goto :goto_e9

    :cond_120
    if-eqz v14, :cond_128

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12c

    :cond_128
    const/4 v1, 0x1

    :goto_129
    iput v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_f6

    :cond_12c
    const/4 v1, 0x0

    goto :goto_129

    :cond_12e
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure adding authority: account="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " auth="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " enabled="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " syncable="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 10
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const-string v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "type"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "value1"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "value2"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_19
    const-string v5, "long"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p2, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const-string v5, "integer"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_38} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_38} :catch_52

    goto :goto_28

    :catch_39
    move-exception v0

    const-string v5, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :cond_42
    :try_start_42
    const-string v5, "double"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {p2, v1, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_51} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_51} :catch_52

    goto :goto_28

    :catch_52
    move-exception v0

    const-string v5, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :cond_5b
    :try_start_5b
    const-string v5, "float"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_28

    :cond_6b
    const-string v5, "boolean"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_28

    :cond_7b
    const-string v5, "string"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_87
    const-string v5, "account"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_97} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_97} :catch_52

    goto :goto_28
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v5, "user"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_b} :catch_2e

    move-result v4

    :goto_c
    const-string v5, "enabled"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :catch_25
    move-exception v0

    const-string v5, "SyncManager"

    const-string v6, "error parsing the user for listen-for-tickles"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_2e
    move-exception v0

    const-string v5, "SyncManager"

    const-string v6, "the user in listen-for-tickles is null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_37
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 16
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const/4 v0, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "period"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "flex"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :try_start_12
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_15} :catch_32

    move-result-wide v4

    :try_start_16
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_19} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_19} :catch_59

    move-result-wide v6

    :goto_1a
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    return-object v0

    :catch_29
    move-exception v8

    const-string v1, "SyncManager"

    const-string v2, "error parsing the period of a periodic sync"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_32
    move-exception v8

    const-string v1, "SyncManager"

    const-string v2, "the period of a periodic sync is null"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_3b
    move-exception v8

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v6

    goto :goto_1a

    :catch_59
    move-exception v9

    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v6

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " flex: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private readAccountInfoLocked()V
    .registers 22

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    const-string v18, "SyncManagerFile"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_38

    const-string v18, "SyncManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v12, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_47
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_52

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_47

    :cond_52
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v18, "accounts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_137

    const/16 v18, 0x0

    const-string v19, "listen-for-tickles"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_152

    const/16 v16, 0x0

    :goto_7c
    const/16 v18, 0x0

    const-string v19, "nextAuthorityId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_87} :catch_174
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_87} :catch_1ae
    .catchall {:try_start_2 .. :try_end_87} :catchall_215

    move-result-object v10

    if-nez v10, :cond_15d

    const/4 v8, 0x0

    :goto_8b
    :try_start_8b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_9d} :catch_240
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_9d} :catch_174
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9d} :catch_1ae
    .catchall {:try_start_8b .. :try_end_9d} :catchall_215

    :goto_9d
    const/16 v18, 0x0

    :try_start_9f
    const-string v19, "offsetInSeconds"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9f .. :try_end_a8} :catch_174
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a8} :catch_1ae
    .catchall {:try_start_9f .. :try_end_a8} :catchall_215

    move-result-object v11

    if-nez v11, :cond_163

    const/16 v18, 0x0

    :goto_ad
    :try_start_ad
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b3} :catch_169
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ad .. :try_end_b3} :catch_174
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b3} :catch_1ae
    .catchall {:try_start_ad .. :try_end_b3} :catchall_215

    :goto_b3
    :try_start_b3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    move/from16 v18, v0

    if-nez v18, :cond_d5

    new-instance v14, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Ljava/util/Random;-><init>(J)V

    const v18, 0x15180

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz v9, :cond_e5

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19a

    :cond_e5
    const/16 v18, 0x1

    :goto_e7
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v3, 0x0

    const/4 v13, 0x0

    :cond_fa
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_12d

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d0

    const-string v18, "authority"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    const/4 v13, 0x0

    iget v0, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_12d

    iget v7, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    :cond_12d
    :goto_12d
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_130
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b3 .. :try_end_130} :catch_174
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_130} :catch_1ae
    .catchall {:try_start_b3 .. :try_end_130} :catchall_215

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_fa

    :cond_137
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_14e

    :try_start_14b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_23d

    :cond_14e
    :goto_14e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    :cond_151
    :goto_151
    return-void

    :cond_152
    :try_start_152
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_155
    .catch Ljava/lang/NumberFormatException; {:try_start_152 .. :try_end_155} :catch_158
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_152 .. :try_end_155} :catch_174
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_1ae
    .catchall {:try_start_152 .. :try_end_155} :catchall_215

    move-result v16

    goto/16 :goto_7c

    :catch_158
    move-exception v4

    const/16 v16, 0x0

    goto/16 :goto_7c

    :cond_15d
    :try_start_15d
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_160} :catch_240
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15d .. :try_end_160} :catch_174
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_1ae
    .catchall {:try_start_15d .. :try_end_160} :catchall_215

    move-result v8

    goto/16 :goto_8b

    :cond_163
    :try_start_163
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_166
    .catch Ljava/lang/NumberFormatException; {:try_start_163 .. :try_end_166} :catch_169
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_163 .. :try_end_166} :catch_174
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_1ae
    .catchall {:try_start_163 .. :try_end_166} :catchall_215

    move-result v18

    goto/16 :goto_ad

    :catch_169
    move-exception v4

    const/16 v18, 0x0

    :try_start_16c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_172
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_172} :catch_174
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_172} :catch_1ae
    .catchall {:try_start_16c .. :try_end_172} :catchall_215

    goto/16 :goto_b3

    :catch_174
    move-exception v4

    :try_start_175
    const-string v18, "SyncManager"

    const-string v19, "Error reading accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_180
    .catchall {:try_start_175 .. :try_end_180} :catchall_215

    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_151

    :try_start_194
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_197} :catch_198

    goto :goto_151

    :catch_198
    move-exception v18

    goto :goto_151

    :cond_19a
    const/16 v18, 0x0

    goto/16 :goto_e7

    :cond_19e
    :try_start_19e
    const-string v18, "listenForTickles"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12d

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19e .. :try_end_1ad} :catch_174
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1ad} :catch_1ae
    .catchall {:try_start_19e .. :try_end_1ad} :catchall_215

    goto :goto_12d

    :catch_1ae
    move-exception v4

    if-nez v6, :cond_22e

    :try_start_1b1
    const-string v18, "SyncManager"

    const-string v19, "No initial accounts"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_215

    :goto_1b8
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_151

    :try_start_1cc
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_198

    goto :goto_151

    :cond_1d0
    :try_start_1d0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f0

    const-string v18, "periodicSync"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12d

    if-eqz v3, :cond_12d

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v13

    goto/16 :goto_12d

    :cond_1f0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12d

    if-eqz v13, :cond_12d

    const-string v18, "extra"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12d

    iget-object v0, v13, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_213
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d0 .. :try_end_213} :catch_174
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_213} :catch_1ae
    .catchall {:try_start_1d0 .. :try_end_213} :catchall_215

    goto/16 :goto_12d

    :catchall_215
    move-exception v18

    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v6, :cond_22d

    :try_start_22a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22d} :catch_23b

    :cond_22d
    :goto_22d
    throw v18

    :cond_22e
    :try_start_22e
    const-string v18, "SyncManager"

    const-string v19, "Error reading accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_239
    .catchall {:try_start_22e .. :try_end_239} :catchall_215

    goto/16 :goto_1b8

    :catch_23b
    move-exception v19

    goto :goto_22d

    :catch_23d
    move-exception v18

    goto/16 :goto_14e

    :catch_240
    move-exception v18

    goto/16 :goto_9d
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .registers 30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    const-string v4, "syncmanager.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_18
    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1d} :catch_2e1

    move-result-object v2

    :goto_1e
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_219

    const/16 v21, 0x1

    :goto_2a
    const-string v3, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "SyncManager"

    const-string v4, "Reading legacy sync accounts db"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v3, "stats, status"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    const-string v3, "_id"

    const-string v4, "status._id as _id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "account"

    const-string v4, "stats.account as account"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v21, :cond_66

    const-string v3, "account_type"

    const-string v4, "stats.account_type as account_type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    const-string v3, "authority"

    const-string v4, "stats.authority as authority"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "totalElapsedTime"

    const-string v4, "totalElapsedTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numSyncs"

    const-string v4, "numSyncs"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numSourceLocal"

    const-string v4, "numSourceLocal"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numSourcePoll"

    const-string v4, "numSourcePoll"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numSourceServer"

    const-string v4, "numSourceServer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numSourceUser"

    const-string v4, "numSourceUser"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lastSuccessSource"

    const-string v4, "lastSuccessSource"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lastSuccessTime"

    const-string v4, "lastSuccessTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lastFailureSource"

    const-string v4, "lastFailureSource"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lastFailureTime"

    const-string v4, "lastFailureTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lastFailureMesg"

    const-string v4, "lastFailureMesg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pending"

    const-string v4, "pending"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v3, "stats._id = status.stats_id"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    :cond_ef
    :goto_ef
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_223

    const-string v3, "account"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v21, :cond_21d

    const-string v3, "account_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :goto_113
    if-nez v16, :cond_117

    const-string v16, "com.google"

    :cond_117
    const-string v3, "authority"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v17

    if-eqz v17, :cond_ef

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v22

    const/16 v20, 0x0

    const/16 v27, 0x0

    :cond_143
    if-lez v22, :cond_15f

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/SyncStatusInfo;

    move-object/from16 v0, v27

    iget v3, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v3, v4, :cond_143

    const/16 v20, 0x1

    :cond_15f
    if-nez v20, :cond_179

    new-instance v27, Landroid/content/SyncStatusInfo;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_179
    const-string v3, "totalElapsedTime"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v27

    iput-wide v3, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    const-string v3, "numSyncs"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    const-string v3, "numSourceLocal"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    const-string v3, "numSourcePoll"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    const-string v3, "numSourceServer"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    const-string v3, "numSourceUser"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    const-string v3, "lastSuccessSource"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    const-string v3, "lastSuccessTime"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v27

    iput-wide v3, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-string v3, "lastFailureSource"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    const-string v3, "lastFailureTime"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v27

    iput-wide v3, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-string v3, "lastFailureMesg"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    const-string v3, "pending"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_221

    const/4 v3, 0x1

    :goto_213
    move-object/from16 v0, v27

    iput-boolean v3, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_ef

    :cond_219
    const/16 v21, 0x0

    goto/16 :goto_2a

    :cond_21d
    const/16 v16, 0x0

    goto/16 :goto_113

    :cond_221
    const/4 v3, 0x0

    goto :goto_213

    :cond_223
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v3, "settings"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    :cond_23c
    :goto_23c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2cf

    const-string v3, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v3, "value"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    if-eqz v24, :cond_23c

    const-string v3, "listen_for_tickles"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27c

    if-eqz v28, :cond_272

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27a

    :cond_272
    const/4 v3, 0x1

    :goto_273
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V

    goto :goto_23c

    :cond_27a
    const/4 v3, 0x0

    goto :goto_273

    :cond_27c
    const-string v3, "sync_provider_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23c

    const-string v3, "sync_provider_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v22

    :cond_29e
    :goto_29e
    if-lez v22, :cond_23c

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29e

    if-eqz v28, :cond_2c2

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    :cond_2c2
    const/4 v3, 0x1

    :goto_2c3
    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_29e

    :cond_2cd
    const/4 v3, 0x0

    goto :goto_2c3

    :cond_2cf
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_10

    :catch_2e1
    move-exception v3

    goto/16 :goto_1e
.end method

.method private readPendingOperationsLocked()V
    .registers 19

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "SyncManagerFile"

    const-string v3, "No pending operation file."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v13

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    const/4 v2, 0x0

    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    :goto_34
    const/4 v2, 0x2

    if-eq v12, v2, :cond_3f

    const/4 v2, 0x1

    if-eq v12, v2, :cond_3f

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_3d} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_3d} :catch_1ed
    .catchall {:try_start_20 .. :try_end_3d} :catchall_205

    move-result v12

    goto :goto_34

    :cond_3f
    const/4 v2, 0x1

    if-ne v12, v2, :cond_4a

    if-eqz v13, :cond_1f

    :try_start_44
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_1f

    :catch_48
    move-exception v2

    goto :goto_1f

    :cond_4a
    :try_start_4a
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_4d} :catch_1ed
    .catchall {:try_start_4a .. :try_end_4d} :catchall_205

    move-result-object v16

    :cond_4e
    const/4 v15, 0x0

    const/4 v2, 0x2

    if-ne v12, v2, :cond_1ea

    :try_start_52
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d0

    const-string v2, "op"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_77

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b0

    :cond_77
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown pending operation version "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown version."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_99} :catch_99
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_99} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_99} :catch_1ed
    .catchall {:try_start_52 .. :try_end_99} :catchall_205

    :catch_99
    move-exception v11

    move-object v1, v15

    :goto_9b
    :try_start_9b
    const-string v2, "SyncManager"

    const-string v3, "Invalid data in xml file."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a2
    :goto_a2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a5} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b .. :try_end_a5} :catch_1ed
    .catchall {:try_start_9b .. :try_end_a5} :catchall_205

    move-result v12

    const/4 v2, 0x1

    if-ne v12, v2, :cond_4e

    if-eqz v13, :cond_1f

    :try_start_ab
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_48

    goto/16 :goto_1f

    :cond_b0
    const/4 v2, 0x0

    :try_start_b1
    const-string v3, "authority_id"

    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v2, 0x0

    const-string v3, "expedited"

    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v2, 0x0

    const-string v3, "source"

    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    const-string v3, "reason"

    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12f

    const-string v2, "SyncManagerFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    if-eqz v9, :cond_197

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v3, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    iget-object v6, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_141
    .catch Ljava/lang/NumberFormatException; {:try_start_b1 .. :try_end_141} :catch_99
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_141} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b1 .. :try_end_141} :catch_1ed
    .catchall {:try_start_b1 .. :try_end_141} :catchall_205

    const/4 v2, 0x0

    :try_start_142
    iput-object v2, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "SyncManagerFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding pending op: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " src="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " expedited="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    :catch_194
    move-exception v11

    goto/16 :goto_9b

    :cond_197
    const/4 v1, 0x0

    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "SyncManagerFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No authority found for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", skipping"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bf
    .catch Ljava/lang/NumberFormatException; {:try_start_142 .. :try_end_1bf} :catch_194
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_1bf} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_142 .. :try_end_1bf} :catch_1ed
    .catchall {:try_start_142 .. :try_end_1bf} :catchall_205

    goto/16 :goto_a2

    :catch_1c1
    move-exception v11

    :try_start_1c2
    const-string v2, "SyncManagerFile"

    const-string v3, "Error reading pending data."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_205

    if-eqz v13, :cond_1f

    :try_start_1cb
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_48

    goto/16 :goto_1f

    :cond_1d0
    :try_start_1d0
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1ea

    if-eqz v15, :cond_1ea

    const-string v2, "extra"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    iget-object v2, v15, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_1ea
    .catch Ljava/lang/NumberFormatException; {:try_start_1d0 .. :try_end_1ea} :catch_99
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1ea} :catch_1c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d0 .. :try_end_1ea} :catch_1ed
    .catchall {:try_start_1d0 .. :try_end_1ea} :catchall_205

    :cond_1ea
    move-object v1, v15

    goto/16 :goto_a2

    :catch_1ed
    move-exception v11

    :try_start_1ee
    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1fe

    const-string v2, "SyncManagerFile"

    const-string v3, "Error parsing pending ops xml."

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1fe
    .catchall {:try_start_1ee .. :try_end_1fe} :catchall_205

    :cond_1fe
    if-eqz v13, :cond_1f

    :try_start_200
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_48

    goto/16 :goto_1f

    :catchall_205
    move-exception v2

    if-eqz v13, :cond_20b

    :try_start_208
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_20b} :catch_20c

    :cond_20b
    :goto_20b
    throw v2

    :catch_20c
    move-exception v3

    goto :goto_20b
.end method

.method private readStatisticsLocked()V
    .registers 11

    const/16 v9, 0x64

    :try_start_2
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v5, 0x0

    :cond_16
    :goto_16
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v7, 0x65

    if-eq v6, v7, :cond_22

    if-ne v6, v9, :cond_55

    :cond_22
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v6, v9, :cond_2c

    add-int/lit16 v7, v1, -0x7d9

    add-int/lit16 v1, v7, 0x37a5

    :cond_2c
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_16

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_55
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6d} :catch_6e

    :cond_6d
    :goto_6d
    return-void

    :catch_6e
    move-exception v3

    const-string v7, "SyncManager"

    const-string v8, "No initial statistics"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private readStatusLocked()V
    .registers 9

    const/4 v6, 0x2

    const-string v5, "SyncManagerFile"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    const/16 v5, 0x64

    if-ne v4, v5, :cond_8a

    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3a

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    const-string v5, "SyncManagerFile"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_79

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding status for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_80} :catch_81

    goto :goto_3a

    :catch_81
    move-exception v1

    const-string v5, "SyncManager"

    const-string v6, "No initial status"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void

    :cond_8a
    :try_start_8a
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a2} :catch_81

    goto :goto_89
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz v0, :cond_25

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz v1, :cond_25

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_25

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_25
    return-void
.end method

.method private reportChange(I)V
    .registers 8
    .param p1    # I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4c

    move-result v0

    move-object v3, v2

    :cond_b
    :goto_b
    if-lez v0, :cond_30

    add-int/lit8 v0, v0, -0x1

    :try_start_f
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    if-nez v3, :cond_53

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_50

    :goto_25
    :try_start_25
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_4c

    move-object v3, v2

    goto :goto_b

    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_50

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3c
    if-lez v0, :cond_4f

    add-int/lit8 v0, v0, -0x1

    :try_start_40
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ISyncStatusObserver;

    invoke-interface {v4, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a

    goto :goto_3c

    :catch_4a
    move-exception v4

    goto :goto_3c

    :catchall_4c
    move-exception v4

    :goto_4d
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v4

    :cond_4f
    return-void

    :catchall_50
    move-exception v4

    move-object v2, v3

    goto :goto_4d

    :cond_53
    move-object v2, v3

    goto :goto_25
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/os/Bundle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    :goto_16
    return-void

    :cond_17
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .registers 6
    .param p0    # [B

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_5
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_15
    .catchall {:try_start_5 .. :try_end_10} :catchall_1c

    move-result-object v0

    :goto_11
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catch_15
    move-exception v1

    :try_start_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_11

    :catchall_1c
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private updateOrRemovePeriodicSync(Landroid/content/PeriodicSync;IZ)V
    .registers 20
    .param p1    # Landroid/content/PeriodicSync;
    .param p2    # I
    .param p3    # Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v15

    :try_start_5
    move-object/from16 v0, p1

    iget-wide v1, v0, Landroid/content/PeriodicSync;->period:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2b

    if-eqz p3, :cond_2b

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "period < 0, should never happen in updateOrRemovePeriodicSync: add-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_4b

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null extras, should never happen in updateOrRemovePeriodicSync: add-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_118

    :cond_4b
    :try_start_4b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    if-eqz p3, :cond_da

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_67
    if-ge v11, v7, :cond_a6

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/PeriodicSync;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-object v2, v14, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Landroid/content/PeriodicSync;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_d7

    move-object/from16 v0, p1

    iget-wide v1, v0, Landroid/content/PeriodicSync;->period:J

    iget-wide v3, v14, Landroid/content/PeriodicSync;->period:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_99

    move-object/from16 v0, p1

    iget-wide v1, v0, Landroid/content/PeriodicSync;->flexTime:J

    iget-wide v3, v14, Landroid/content/PeriodicSync;->flexTime:J
    :try_end_8d
    .catchall {:try_start_4b .. :try_end_8d} :catchall_110

    cmp-long v1, v1, v3

    if-nez v1, :cond_99

    :try_start_91
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    monitor-exit v15
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_118

    :goto_98
    return-void

    :cond_99
    :try_start_99
    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v2, Landroid/content/PeriodicSync;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v1, v11, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    :cond_a6
    if-nez v8, :cond_c9

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v2, Landroid/content/PeriodicSync;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v13

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v13, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_c9
    .catchall {:try_start_99 .. :try_end_c9} :catchall_110

    :cond_c9
    :try_start_c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    monitor-exit v15
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_118

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_98

    :cond_d7
    add-int/lit8 v11, v11, 0x1

    goto :goto_67

    :cond_da
    :try_start_da
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/SyncStatusInfo;

    const/4 v10, 0x0

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v11, 0x0

    :goto_ee
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_126

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/PeriodicSync;

    iget-object v1, v14, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Landroid/content/PeriodicSync;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    const/4 v10, 0x1

    if-eqz v13, :cond_11b

    invoke-virtual {v13, v11}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_10f
    .catchall {:try_start_da .. :try_end_10f} :catchall_110

    goto :goto_ee

    :catchall_110
    move-exception v1

    :try_start_111
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    throw v1

    :catchall_118
    move-exception v1

    monitor-exit v15
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_118

    throw v1

    :cond_11b
    :try_start_11b
    const-string v1, "SyncManager"

    const-string v2, "Tried removing sync status on remove periodic sync butdid not find it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_11b .. :try_end_122} :catchall_110

    goto :goto_ee

    :cond_123
    add-int/lit8 v11, v11, 0x1

    goto :goto_ee

    :cond_126
    if-nez v10, :cond_c9

    :try_start_128
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    monitor-exit v15
    :try_end_12f
    .catchall {:try_start_128 .. :try_end_12f} :catchall_118

    goto/16 :goto_98
.end method

.method private writeAccountInfoLocked()V
    .registers 20

    const-string v15, "SyncManagerFile"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2c

    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Writing new "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v7, 0x0

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v15, "utf-8"

    invoke-interface {v12, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v15, 0x0

    const-string v16, "accounts"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "version"

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "nextAuthorityId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "offsetInSeconds"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_9d
    if-ge v11, v2, :cond_e4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    const/4 v15, 0x0

    const-string v16, "listenForTickles"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "user"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "enabled"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "listenForTickles"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9d

    :cond_e4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_ed
    if-ge v8, v3, :cond_22d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const/4 v15, 0x0

    const-string v16, "authority"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "id"

    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "user"

    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "enabled"

    iget-boolean v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    if-nez v15, :cond_1e3

    const/4 v15, 0x0

    const-string v16, "account"

    iget-object v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "type"

    iget-object v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "authority"

    iget-object v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_171
    iget v15, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-gez v15, :cond_209

    const/4 v15, 0x0

    const-string v16, "syncable"

    const-string v17, "unknown"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_181
    iget-object v15, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_187
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_221

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/PeriodicSync;

    const/4 v15, 0x0

    const-string v16, "periodicSync"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "period"

    iget-wide v0, v13, Landroid/content/PeriodicSync;->period:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "flex"

    iget-wide v0, v13, Landroid/content/PeriodicSync;->flexTime:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v13, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/android/server/content/SyncStorageEngine;->extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    const/4 v15, 0x0

    const-string v16, "periodicSync"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_1ce} :catch_1cf

    goto :goto_187

    :catch_1cf
    move-exception v5

    const-string v15, "SyncManager"

    const-string v16, "Error writing accounts"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v7, :cond_1e2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v15, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1e2
    :goto_1e2
    return-void

    :cond_1e3
    const/4 v15, 0x0

    :try_start_1e4
    const-string v16, "package"

    iget-object v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    const-string v16, "class"

    iget-object v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_171

    :cond_209
    const/16 v16, 0x0

    const-string v17, "syncable"

    iget v15, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-eqz v15, :cond_21f

    const/4 v15, 0x1

    :goto_212
    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_181

    :cond_21f
    const/4 v15, 0x0

    goto :goto_212

    :cond_221
    const/4 v15, 0x0

    const-string v16, "authority"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ed

    :cond_22d
    const/4 v15, 0x0

    const-string v16, "accounts"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v15, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_23f} :catch_1cf

    goto :goto_1e2
.end method

.method private writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .param p2    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "op"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "version"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "authority_id"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "source"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "expedited"

    iget-boolean v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "reason"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/SyncStorageEngine;->extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    const-string v0, "op"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writePendingOperationsLocked()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_36

    :try_start_9
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_30

    const-string v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Truncating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->truncate()V

    :cond_35
    :goto_35
    return-void

    :cond_36
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v6, "utf-8"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_6e
    if-ge v3, v0, :cond_7e

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    invoke-direct {p0, v5, v4}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_7e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_86} :catch_87

    goto :goto_35

    :catch_87
    move-exception v1

    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_35

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_35
.end method

.method private writeStatisticsLocked()V
    .registers 11

    const/4 v9, 0x2

    const-string v6, "SyncManagerFile"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    invoke-virtual {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    const/4 v3, 0x0

    :try_start_2b
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v0, :cond_41

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    if-nez v1, :cond_55

    :cond_41
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_73} :catch_76

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :catch_76
    move-exception v2

    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_54

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_54
.end method

.method private writeStatusLocked()V
    .registers 10

    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    const/4 v2, 0x0

    :try_start_2c
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v0, :cond_53

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_53
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_66} :catch_67

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception v1

    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_66

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_66
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 10
    .param p1    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v2, v2, Lcom/android/server/content/SyncOperation;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    new-instance v0, Landroid/content/SyncInfo;

    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_31

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    return-object v0

    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public addPeriodicSync(Landroid/content/PeriodicSync;I)V
    .registers 4
    .param p1    # Landroid/content/PeriodicSync;
    .param p2    # I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/content/PeriodicSync;IZ)V

    return-void
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1    # I
    .param p2    # Landroid/content/ISyncStatusObserver;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V
    .registers 16
    .param p1    # Lcom/android/server/content/SyncQueue;

    const-wide/16 v12, -0x1

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v11

    :try_start_6
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    iget-object v0, v6, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_26
    :goto_26
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-wide v0, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_3e

    iget-wide v0, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_26

    :cond_3e
    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    iget-object v0, v6, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v0, v6, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    iget-object v3, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    const/4 v8, 0x1

    goto :goto_26

    :cond_58
    monitor-exit v11
    :try_end_59
    .catchall {:try_start_6 .. :try_end_59} :catchall_60

    if-eqz v8, :cond_5f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    :cond_5f
    return-void

    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v11
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public clearAndReadState()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readPendingOperationsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    monitor-exit v1

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .registers 14
    .param p1    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_4
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_19

    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v7, v9, :cond_6c

    :cond_19
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    :goto_1f
    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v9, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iget-object v10, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const-string v11, "deleteFromPending"

    invoke-direct {p0, v7, v9, v10, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-eqz v1, :cond_65

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v0, :cond_5a

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v9}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iget v9, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    if-ne v7, v9, :cond_76

    const/4 v4, 0x1

    :cond_5a
    if-nez v4, :cond_65

    iget v7, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/SyncStatusInfo;->pending:Z

    :cond_65
    const/4 v5, 0x1

    :cond_66
    monitor-exit v8
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_73

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return v5

    :cond_6c
    :try_start_6c
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    goto :goto_1f

    :catchall_73
    move-exception v7

    monitor-exit v8
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_73

    throw v7

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_35
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .registers 14
    .param p1    # [Landroid/accounts/Account;
    .param p2    # I

    iget-object v9, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_3
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v8, p2, :cond_12

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_38

    :catchall_4a
    move-exception v8

    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v8

    :cond_4d
    :try_start_4d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_51
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_aa

    :cond_57
    if-lez v3, :cond_9e

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    :cond_6a
    :goto_6a
    if-lez v6, :cond_82

    add-int/lit8 v6, v6, -0x1

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_6a

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_6a

    :cond_82
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_88
    :goto_88
    if-lez v6, :cond_57

    add-int/lit8 v6, v6, -0x1

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_88

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_88

    :cond_9e
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    :cond_aa
    monitor-exit v9
    :try_end_ab
    .catchall {:try_start_4d .. :try_end_ab} :catchall_4a

    return-void
.end method

.method public dumpPendingOperations(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1    # Ljava/lang/StringBuilder;

    const-string v2, "Pending Ops: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_91
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;
    .registers 11
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-wide v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_16

    :cond_13
    const/4 v1, 0x0

    monitor-exit v2

    :goto_15
    return-object v1

    :cond_16
    iget-wide v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v2

    goto :goto_15

    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_f
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_29
    monitor-exit v3

    return-object v1

    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getCopyOfAuthorityWithSyncStatus(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;
    .registers 12
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v7

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v7
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getCurrentSyncs(I)Ljava/util/List;
    .registers 5
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    monitor-exit v2

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 7

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v2

    return-object v0

    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J
    .registers 8
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_3
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-nez v0, :cond_f

    const-wide/16 v1, 0x0

    monitor-exit v3

    :goto_e
    return-wide v1

    :cond_f
    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v3

    goto :goto_e

    :catchall_13
    move-exception v1

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    if-eqz p1, :cond_17

    :try_start_6
    const-string v4, "getIsSyncable"

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-nez v0, :cond_10

    monitor-exit v3

    :goto_f
    return v2

    :cond_10
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v3

    goto :goto_f

    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v2

    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    :cond_1d
    if-lez v1, :cond_35

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v3

    goto :goto_f

    :cond_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_14

    goto :goto_f
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_11

    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    :goto_f
    monitor-exit v2

    return v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_f

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPendingOperationCount()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;ILjava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_8
    const-string v4, "getPeriodicSyncs"

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/PeriodicSync;

    new-instance v4, Landroid/content/PeriodicSync;

    invoke-direct {v4, v2}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_2b
    move-exception v4

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v4

    :cond_2e
    :try_start_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    return-object v3
.end method

.method public getStatusByAccountAndAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 12
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_7

    :cond_5
    move-object v2, v4

    :goto_6
    return-object v2

    :cond_7
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_a
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_43

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz v1, :cond_40

    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne v6, p2, :cond_40

    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    monitor-exit v5

    goto :goto_6

    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3d

    throw v4

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_43
    :try_start_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_3d

    move-object v2, v4

    goto :goto_6
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    if-eqz p1, :cond_17

    :try_start_7
    const-string v5, "getSyncAutomatically"

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-boolean v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_15

    :goto_13
    monitor-exit v4

    :goto_14
    return v2

    :cond_15
    move v2, v3

    goto :goto_13

    :cond_17
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    :cond_1d
    if-lez v1, :cond_3e

    add-int/lit8 v1, v1, -0x1

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne v5, p2, :cond_1d

    iget-boolean v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_1d

    monitor-exit v4

    goto :goto_14

    :catchall_3b
    move-exception v2

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v2

    :cond_3e
    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    move v2, v3

    goto :goto_14
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    monitor-exit v4

    return-object v2

    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public getSyncRandomOffset()I
    .registers 2

    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    monitor-exit v4

    return-object v2

    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    monitor-exit v1

    :cond_c
    :goto_c
    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_18
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    monitor-exit v1

    goto :goto_c

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public insertIntoPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .registers 12
    .param p1    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget-object v9, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    if-nez v6, :cond_15

    const/4 v7, 0x0

    monitor-exit v9

    :goto_14
    return-object v7

    :cond_15
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    invoke-direct {v7, p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_36

    :try_start_1a
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, v7, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7}, Lcom/android/server/content/SyncStorageEngine;->appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/content/SyncStatusInfo;->pending:Z

    monitor-exit v9
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    move-object p1, v7

    goto :goto_14

    :catchall_36
    move-exception v0

    :goto_37
    :try_start_37
    monitor-exit v9
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :catchall_39
    move-exception v0

    move-object p1, v7

    goto :goto_37
.end method

.method public insertStartSyncEvent(Landroid/accounts/Account;IILjava/lang/String;JIZLandroid/os/Bundle;)J
    .registers 18
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # I
    .param p8    # Z
    .param p9    # Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_3
    const-string v5, "insertStartSyncEvent"

    invoke-direct {p0, p1, p2, p4, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_f

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_e
    return-wide v2

    :cond_f
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v4}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    move/from16 v0, p8

    iput-boolean v0, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v5, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    iget v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v5, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    iget v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v5, :cond_2b

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    :cond_2b
    iput-wide p5, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    iput p7, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput p3, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    move-object/from16 v0, p9

    iput-object v0, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3e
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x64

    if-le v5, v7, :cond_59

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    :catchall_56
    move-exception v5

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v5

    :cond_59
    :try_start_59
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v2, v5

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_56

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_e
.end method

.method public isSyncActive(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne v3, p2, :cond_b

    const/4 v3, 0x1

    monitor-exit v4

    :goto_35
    return v3

    :cond_36
    monitor-exit v4

    const/4 v3, 0x0

    goto :goto_35

    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 11
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_40

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v1, :cond_23

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_23
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne p2, v4, :cond_20

    if-eqz p1, :cond_31

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_31
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    monitor-exit v5

    :goto_3f
    return v4

    :cond_40
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_3f

    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v4
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 5
    .param p1    # Landroid/content/SyncInfo;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeAuthority(Landroid/accounts/Account;ILjava/lang/String;)V
    .registers 6
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public removePeriodicSync(Landroid/content/PeriodicSync;I)V
    .registers 4
    .param p1    # Landroid/content/PeriodicSync;
    .param p2    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/content/PeriodicSync;IZ)V

    return-void
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .param p1    # Landroid/content/ISyncStatusObserver;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public reportActiveChange()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void
.end method

.method public setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V
    .registers 23
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # J

    const/4 v11, 0x0

    iget-object v14, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v14

    if-eqz p1, :cond_8

    if-nez p3, :cond_6c

    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz p1, :cond_34

    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    :cond_34
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3e
    :goto_3e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz p3, :cond_56

    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_56
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_62

    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p6

    if-eqz v2, :cond_3e

    :cond_62
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v0, p6

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const/4 v11, 0x1

    goto :goto_3e

    :cond_6c
    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    iget-wide v2, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_87

    iget-wide v2, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p6

    if-nez v2, :cond_87

    monitor-exit v14

    :cond_86
    :goto_86
    return-void

    :cond_87
    move-wide/from16 v0, p4

    iput-wide v0, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v0, p6

    iput-wide v0, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const/4 v11, 0x1

    :cond_90
    monitor-exit v14
    :try_end_91
    .catchall {:try_start_8 .. :try_end_91} :catchall_98

    if-eqz v11, :cond_86

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_86

    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v14
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v2
.end method

.method public setDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;J)V
    .registers 15
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # J

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    iget-wide v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v0, v0, p4

    if-nez v0, :cond_16

    monitor-exit v7

    :goto_15
    return-void

    :cond_16
    iput-wide p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v7
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1d

    invoke-direct {p0, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_15

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .registers 14
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # I

    const/4 v8, 0x1

    const/4 v0, -0x1

    if-le p4, v8, :cond_18

    const/4 p4, 0x1

    :cond_5
    :goto_5
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, p4, :cond_1c

    monitor-exit v7

    :goto_17
    return-void

    :cond_18
    if-ge p4, v0, :cond_5

    const/4 p4, -0x1

    goto :goto_5

    :cond_1c
    iput p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v7
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_35

    if-lez p4, :cond_31

    const/4 v3, -0x5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_31
    invoke-direct {p0, v8}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_17

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public setMasterSyncAutomatically(ZI)V
    .registers 10
    .param p1    # Z
    .param p2    # I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_16

    monitor-exit v2

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_3d

    if-eqz p1, :cond_31

    const/4 v3, -0x7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move v2, p2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_15

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3
    .param p1    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    :cond_6
    return-void
.end method

.method public setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V
    .registers 12
    .param p1    # I
    .param p2    # Landroid/content/PeriodicSync;
    .param p3    # J

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const/4 v2, 0x0

    :goto_d
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/PeriodicSync;

    invoke-virtual {p2, v3}, Landroid/content/PeriodicSync;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    invoke-virtual {v4, v2, p3, p4}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V

    const/4 v1, 0x1

    :cond_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_50

    if-nez v1, :cond_4c

    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setPeriodicSyncTime request for a sync that does not exist. Authority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-void

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v4
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 13
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v0, p4, :cond_13

    monitor-exit v7

    :goto_12
    return-void

    :cond_13
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v7
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_2d

    if-eqz p4, :cond_28

    const/4 v3, -0x6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    :cond_28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_12

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 27
    .param p1    # J
    .param p3    # J
    .param p5    # Ljava/lang/String;
    .param p6    # J
    .param p8    # J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_e
    if-lez v4, :cond_25

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object v5, v0

    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v13, v11

    cmp-long v11, v13, p1

    if-nez v11, :cond_43

    :cond_25
    if-nez v5, :cond_45

    const-string v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "stopSyncEvent: no history for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    :goto_42
    return-void

    :cond_43
    const/4 v5, 0x0

    goto :goto_e

    :cond_45
    move-wide/from16 v0, p3

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    const/4 v11, 0x1

    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-wide/from16 v0, p6

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v0, p8

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v13, v13, p3

    iput-wide v13, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v11, :pswitch_data_1ba

    :goto_71
    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_110

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v3, v11, v13

    iget-wide v13, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v6, v13, p3

    const/4 v10, 0x0

    const-string v11, "success"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_151

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_b1

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_b2

    :cond_b1
    const/4 v10, 0x1

    :cond_b2
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    const-wide/16 v13, 0x0

    iput-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const/4 v11, -0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    const/4 v11, 0x0

    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    const-wide/16 v13, 0x0

    iput-wide v13, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget-wide v13, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v13, v13, p3

    iput-wide v13, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    :cond_d2
    :goto_d2
    if-eqz v10, :cond_186

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    :cond_d7
    :goto_d7
    if-eqz v9, :cond_1a0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    :cond_dc
    :goto_dc
    monitor-exit v12
    :try_end_dd
    .catchall {:try_start_6 .. :try_end_dd} :catchall_ed

    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    goto/16 :goto_42

    :pswitch_e6
    :try_start_e6
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto :goto_71

    :catchall_ed
    move-exception v11

    monitor-exit v12
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_ed

    throw v11

    :pswitch_f0
    :try_start_f0
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_71

    :pswitch_f8
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_71

    :pswitch_100
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_71

    :pswitch_108
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_71

    :cond_110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v2, v11, :cond_146

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v11, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    const/4 v9, 0x1

    goto/16 :goto_8b

    :cond_146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_8b

    goto/16 :goto_8b

    :cond_151
    const-string v11, "canceled"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d2

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_164

    const/4 v10, 0x1

    :cond_164
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move-object/from16 v0, p5

    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_178

    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    :cond_178
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget-wide v13, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v13, v13, p3

    iput-wide v13, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_d2

    :cond_186
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_d7

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v13, 0x927c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_d7

    :cond_1a0
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_dc

    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v13, 0x1b7740

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b8
    .catchall {:try_start_f0 .. :try_end_1b8} :catchall_ed

    goto/16 :goto_dc

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_100
        :pswitch_e6
        :pswitch_f0
        :pswitch_f8
        :pswitch_108
    .end packed-switch
.end method

.method public writeAllState()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    if-lez v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    :cond_a
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
