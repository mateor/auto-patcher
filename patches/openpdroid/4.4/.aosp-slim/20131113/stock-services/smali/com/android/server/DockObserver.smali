.class final Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mSystemReady:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DockObserver;)V
    .registers 1
    .param p0    # Lcom/android/server/DockObserver;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method private handleDockStateChange()V
    .registers 15

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7
    sget-object v6, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dock state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_39

    sget-object v6, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v8, "Device not provisioned, skipping dock broadcast"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_38
    return-void

    :cond_39
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x20000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.DOCK_STATE"

    iget v8, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "dock_sounds_enabled"

    const/4 v8, 0x1

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_98

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v6, :cond_b0

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-eq v6, v10, :cond_66

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-eq v6, v12, :cond_66

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v6, v13, :cond_a9

    :cond_66
    const-string v5, "desk_undock_sound"

    :cond_68
    :goto_68
    if-eqz v5, :cond_98

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_98

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_98

    iget-object v6, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_98

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    :cond_98
    iget-object v6, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit v7

    goto :goto_38

    :catchall_a6
    move-exception v6

    monitor-exit v7
    :try_end_a8
    .catchall {:try_start_7 .. :try_end_a8} :catchall_a6

    throw v6

    :cond_a9
    :try_start_a9
    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v6, v11, :cond_68

    const-string v5, "car_undock_sound"

    goto :goto_68

    :cond_b0
    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v6, v10, :cond_bc

    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v6, v12, :cond_bc

    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v6, v13, :cond_bf

    :cond_bc
    const-string v5, "desk_dock_sound"

    goto :goto_68

    :cond_bf
    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v6, v11, :cond_68

    const-string v5, "car_dock_sound"
    :try_end_c5
    .catchall {:try_start_a9 .. :try_end_c5} :catchall_a6

    goto :goto_68
.end method

.method private init()V
    .registers 8

    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v4, 0x400

    :try_start_5
    new-array v0, v4, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_43
    .catchall {:try_start_5 .. :try_end_e} :catchall_40

    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_11
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_32

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_30} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_43
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    :goto_30
    :try_start_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_40

    return-void

    :catchall_32
    move-exception v4

    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_37} :catch_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_43
    .catchall {:try_start_33 .. :try_end_37} :catchall_40

    :catch_37
    move-exception v1

    :try_start_38
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v4

    :catch_43
    move-exception v1

    :try_start_44
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_40

    goto :goto_30
.end method

.method private updateLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 8
    .param p1    # Landroid/os/UEventObserver$UEvent;

    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_28
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v2, :cond_4c

    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_4c} :catch_4e
    .catchall {:try_start_28 .. :try_end_4c} :catchall_68

    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v3

    return-void

    :catch_4e
    move-exception v0

    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catchall_68
    move-exception v2

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_68

    throw v2
.end method

.method systemReady()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
