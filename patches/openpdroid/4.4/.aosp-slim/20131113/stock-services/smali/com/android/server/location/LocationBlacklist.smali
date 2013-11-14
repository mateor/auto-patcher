.class public final Lcom/android/server/location/LocationBlacklist;
.super Landroid/database/ContentObserver;
.source "LocationBlacklist.java"


# static fields
.field private static final BLACKLIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationBlacklist"

.field private static final WHITELIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private mBlacklist:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field private mWhitelist:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/LocationBlacklist;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    iput v1, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p1    # Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    iget-object v7, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v9, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    invoke-static {v7, p1, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v8
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    if-nez v1, :cond_19

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    :goto_15
    return-object v7

    :catchall_16
    move-exception v7

    :try_start_17
    monitor-exit v8
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v7

    :cond_19
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v3, :cond_3c

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_38
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_15
.end method

.method private inWhitelist(Ljava/lang/String;)Z
    .registers 8
    .param p1    # Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    :goto_13
    return v4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_13

    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method private reloadBlacklist()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklistLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private reloadBlacklistLocked()V
    .registers 4

    const-string v0, "locationPackagePrefixWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBlacklist;->getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/location/LocationBlacklist;->D:Z

    if-eqz v0, :cond_2a

    const-string v0, "LocationBlacklist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const-string v0, "locationPackagePrefixBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBlacklist;->getStringArrayLocked(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/location/LocationBlacklist;->D:Z

    if-eqz v0, :cond_54

    const-string v0, "LocationBlacklist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blacklist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWhitelist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mWhitelist:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBlacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "locationPackagePrefixBlacklist"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklist()V

    return-void
.end method

.method public isBlacklisted(Ljava/lang/String;)Z
    .registers 10
    .param p1    # Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/LocationBlacklist;->mBlacklist:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_43

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBlacklist;->inWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    sget-boolean v4, Lcom/android/server/location/LocationBlacklist;->D:Z

    if-eqz v4, :cond_40

    const-string v4, "LocationBlacklist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropping location (blacklisted): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " matches "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v4, 0x1

    monitor-exit v5

    :goto_42
    return v4

    :cond_43
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_42

    :catchall_46
    move-exception v4

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v4
.end method

.method public onChange(Z)V
    .registers 2
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklist()V

    return-void
.end method

.method public switchUser(I)V
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/location/LocationBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/android/server/location/LocationBlacklist;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/location/LocationBlacklist;->reloadBlacklistLocked()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
