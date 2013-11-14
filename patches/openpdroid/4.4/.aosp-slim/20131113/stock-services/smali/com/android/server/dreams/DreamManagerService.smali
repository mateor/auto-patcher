.class public final Lcom/android/server/dreams/DreamManagerService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/dreams/DreamManagerService;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .registers 2
    .param p0    # Lcom/android/server/dreams/DreamManagerService;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .registers 2
    .param p0    # Lcom/android/server/dreams/DreamManagerService;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-void
.end method

.method private chooseDreamForUser(I)Landroid/content/ComponentName;
    .registers 4
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v1, v0

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private cleanupDreamLocked()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    iput-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .registers 5
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v0, v3, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    :goto_e
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 7
    .param p0    # [Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_23

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_19

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 13
    .param p1    # I

    iget-object v8, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screensaver_components"

    invoke-static {v8, v9, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_49

    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v5, :cond_49

    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->serviceExists(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2a
    const-string v8, "DreamManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_49
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_70

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_70

    const-string v8, "DreamManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Falling back to default dream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_70
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/ComponentName;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    return-object v8
.end method

.method private serviceExists(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1    # Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    :try_start_3
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_d} :catch_12

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    :goto_11
    return v1

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-ne v0, p2, :cond_11

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, p3, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked()V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    iget-object v6, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$3;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZI)V

    invoke-virtual {v6, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method private stopDreamLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method


# virtual methods
.method public awaken()V
    .registers 7

    const-string v4, "android.permission.WRITE_DREAM_STATE"

    invoke-direct {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->stopDream()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public dream()V
    .registers 7

    const-string v4, "android.permission.WRITE_DREAM_STATE"

    invoke-direct {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4, v2, v3}, Landroid/os/PowerManager;->nap(J)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump DreamManager from pid="

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
    const-string v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDreamIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, p2, v2, v3}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    goto :goto_32
.end method

.method public finishSelf(Landroid/os/IBinder;)V
    .registers 6
    .param p1    # Landroid/os/IBinder;

    if-nez p1, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_20

    :try_start_11
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v2, p1, :cond_18

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked()V

    :cond_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .registers 7

    const-string v4, "android.permission.READ_DREAM_STATE"

    invoke-direct {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screensaver_default_component"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_25

    move-result-object v2

    if-nez v2, :cond_20

    const/4 v4, 0x0

    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_20
    :try_start_20
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_25

    move-result-object v4

    goto :goto_1c

    :catchall_25
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .registers 5

    const-string v3, "android.permission.READ_DREAM_STATE"

    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    invoke-direct {p0, v2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_15
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isDreaming()Z
    .registers 3

    const-string v0, "android.permission.READ_DREAM_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .registers 8
    .param p1    # [Landroid/content/ComponentName;

    const-string v3, "android.permission.WRITE_DREAM_STATE"

    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_components"

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public startDream()V
    .registers 5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_e
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZI)V

    monitor-exit v3

    :cond_12
    return-void

    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw v2
.end method

.method public stopDream()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public systemRunning()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .registers 9
    .param p1    # Landroid/content/ComponentName;

    const-string v4, "android.permission.WRITE_DREAM_STATE"

    invoke-direct {p0, v4}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    if-nez p1, :cond_f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "dream must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_3c

    const-string v4, "DreamManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void

    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_40
    iget-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4f

    const/4 v4, 0x1

    :try_start_44
    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZI)V

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4c

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3b

    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
