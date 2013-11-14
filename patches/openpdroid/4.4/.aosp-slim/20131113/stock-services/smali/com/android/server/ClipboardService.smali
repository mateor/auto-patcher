.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;,
        Lcom/android/server/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    :try_start_23
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_42

    move-result-object v1

    :goto_2b
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_42
    move-exception v0

    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .registers 2
    .param p0    # Lcom/android/server/ClipboardService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 14
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v8, 0x0

    :try_start_d
    invoke-interface {v6, p2, v8, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_55

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_82

    :catch_2c
    move-exception v8

    :cond_2d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v8, :cond_8c

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_47
    if-ge v2, v0, :cond_87

    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v8, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_55
    :try_start_55
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    if-nez v8, :cond_2d

    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not own package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_82} :catch_2c
    .catchall {:try_start_55 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v8

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_87
    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v8, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8c
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6
    .param p1    # Landroid/content/ClipData;
    .param p2    # I

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1    # Landroid/content/ClipData$Item;
    .param p2    # I

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 8
    .param p1    # Landroid/net/Uri;
    .param p2    # I

    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_21
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private final clearActiveOwnersLocked()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v3, :cond_e

    :cond_d
    return-void

    :cond_e
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_d

    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .registers 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

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

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/content/ClipData$Item;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_4
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    :goto_12
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1b
    move-exception v0

    goto :goto_12
.end method

.method private removeClipboard(I)V
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4
    .param p1    # Landroid/content/ClipData$Item;

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 7
    .param p1    # Landroid/net/Uri;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_15
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    :goto_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_15
    move-exception v2

    goto :goto_c
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 6
    .param p1    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2    # Ljava/lang/String;

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 5
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    monitor-exit p0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_11

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 7
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    monitor-exit p0

    :goto_11
    return-object v1

    :cond_12
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_20

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    :cond_20
    monitor-exit p0

    goto :goto_11

    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 8
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    monitor-exit p0

    :goto_11
    return v2

    :cond_12
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_33

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    monitor-exit p0

    goto :goto_11

    :catchall_30
    move-exception v2

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_30

    throw v2

    :cond_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    goto :goto_11
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    monitor-exit p0

    :goto_11
    return v0

    :cond_12
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    monitor-exit p0

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v0
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .param p1    # Landroid/content/IOnPrimaryClipChangedListener;

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 14
    .param p1    # Landroid/content/ClipData;
    .param p2    # Ljava/lang/String;

    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-gtz v7, :cond_14

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No items"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_11
    move-exception v7

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v7

    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_24

    monitor-exit p0

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0, p1, v0}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iput-object p1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v7, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_11

    move-result v6

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v6, :cond_6b

    :try_start_3d
    iget-object v7, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ClipboardService$ListenerInfo;

    iget-object v7, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v8, 0x1d

    iget v9, v5, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v10, v5, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5e

    iget-object v7, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v7}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_5e} :catch_75
    .catchall {:try_start_3d .. :try_end_5e} :catchall_61

    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :catchall_61
    move-exception v7

    :try_start_62
    iget-object v8, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_6b
    iget-object v7, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_11

    goto :goto_23

    :catch_75
    move-exception v7

    goto :goto_5e
.end method
