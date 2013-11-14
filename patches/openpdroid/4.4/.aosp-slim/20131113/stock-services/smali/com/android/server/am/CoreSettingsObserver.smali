.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sCoreSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/CoreSettingsObserver;->sCoreSettingToTypeMap:Ljava/util/Map;

    sget-object v0, Lcom/android/server/am/CoreSettingsObserver;->sCoreSettingToTypeMap:Ljava/util/Map;

    const-string v1, "long_press_timeout"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1    # Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->beginObserveCoreSettings()V

    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    return-void
.end method

.method private beginObserveCoreSettings()V
    .registers 6

    sget-object v3, Lcom/android/server/am/CoreSettingsObserver;->sCoreSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_a

    :cond_27
    return-void
.end method

.method private populateCoreSettings(Landroid/os/Bundle;)V
    .registers 13
    .param p1    # Landroid/os/Bundle;

    iget-object v8, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/am/CoreSettingsObserver;->sCoreSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    :try_start_26
    const-class v8, Ljava/lang/String;

    if-ne v5, v8, :cond_56

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_26 .. :try_end_35} :catch_36

    goto :goto_e

    :catch_36
    move-exception v4

    sget-object v8, Lcom/android/server/am/CoreSettingsObserver;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find setting \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_56
    :try_start_56
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_66

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_e

    :cond_66
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_76

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_e

    :cond_76
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_85
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_56 .. :try_end_85} :catch_36

    goto :goto_e

    :cond_86
    return-void
.end method

.method private sendCoreSettings()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/server/am/CoreSettingsObserver;->populateCoreSettings(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/CoreSettingsObserver;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public onChange(Z)V
    .registers 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/am/CoreSettingsObserver;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/CoreSettingsObserver;->sendCoreSettings()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
