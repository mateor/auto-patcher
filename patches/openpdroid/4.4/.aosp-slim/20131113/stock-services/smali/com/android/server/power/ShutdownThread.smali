.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0    # Z

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 8
    .param p0    # Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_13

    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown sequence already running, returning."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_12
    return-void

    :cond_13
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_b5

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_b8

    const v2, 0x104004d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x1040055

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_34
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_5a
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_78
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_78} :catch_ce

    :goto_78
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_a5

    :try_start_86
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_a5} :catch_db

    :cond_a5
    :goto_a5
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_12

    :catchall_b5
    move-exception v2

    :try_start_b6
    monitor-exit v3
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v2

    :cond_b8
    const v2, 0x10400c9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x10400cd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_34

    :catch_ce
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_78

    :catch_db
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_a5
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7
    .param p0    # Z
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_2f

    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    return-void

    :cond_2f
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    const-wide/16 v2, 0x1f4

    :try_start_36
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_41

    :goto_39
    const-wide/16 v2, 0x1f4

    :try_start_3b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_24

    :catch_3f
    move-exception v2

    goto :goto_24

    :catch_41
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 3
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 3
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .registers 11
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    const v8, 0x1040013

    const v7, 0x1040009

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_16

    const-string v3, "ShutdownThread"

    const-string v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_15
    return-void

    :cond_16
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_af

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_b2

    const v2, 0x10400d1

    :goto_29
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_ec

    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_51

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_51
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_bf

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v3, :cond_bf

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x104004d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1070034

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_94
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_15

    :catchall_af
    move-exception v3

    :try_start_b0
    monitor-exit v4
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v3

    :cond_b2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_ba

    const v2, 0x10400cf

    goto/16 :goto_29

    :cond_ba
    const v2, 0x10400ce

    goto/16 :goto_29

    :cond_bf
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_e8

    const v3, 0x10400d0

    :goto_cb
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_94

    :cond_e8
    const v3, 0x10400c9

    goto :goto_cb

    :cond_ec
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_15
.end method

.method private shutdownRadios(I)V
    .registers 10
    .param p1    # I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    const/4 v4, 0x1

    new-array v0, v4, [Z

    new-instance v3, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    int-to-long v4, p1

    :try_start_13
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_23

    :goto_16
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_22

    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void

    :catch_23
    move-exception v4

    goto :goto_16
.end method


# virtual methods
.method actionDone()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 23

    new-instance v6, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_f8

    const-string v2, "1"

    :goto_12
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_fc

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_36

    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const-string v2, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long v17, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_6c
    :try_start_6c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_85

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v17, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_100

    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_10c

    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    if-eqz v11, :cond_9e

    const/16 v2, 0x2710

    :try_start_9b
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_9e} :catch_12d

    :cond_9e
    :goto_9e
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    new-instance v20, Lcom/android/server/power/ShutdownThread$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x4e20

    add-long v15, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c7
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v19

    if-eqz v19, :cond_10f

    invoke-interface/range {v19 .. v20}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d6} :catch_117
    .catchall {:try_start_c7 .. :try_end_d6} :catchall_120

    :goto_d6
    :try_start_d6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_ef

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v15, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_123

    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    monitor-exit v4
    :try_end_f0
    .catchall {:try_start_d6 .. :try_end_f0} :catchall_120

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    return-void

    :cond_f8
    const-string v2, "0"

    goto/16 :goto_12

    :cond_fc
    const-string v2, ""

    goto/16 :goto_1c

    :cond_100
    :try_start_100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_107
    .catch Ljava/lang/InterruptedException; {:try_start_100 .. :try_end_107} :catch_109
    .catchall {:try_start_100 .. :try_end_107} :catchall_10c

    goto/16 :goto_6c

    :catch_109
    move-exception v2

    goto/16 :goto_6c

    :catchall_10c
    move-exception v2

    :try_start_10d
    monitor-exit v4
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v2

    :cond_10f
    :try_start_10f
    const-string v2, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_116} :catch_117
    .catchall {:try_start_10f .. :try_end_116} :catchall_120

    goto :goto_d6

    :catch_117
    move-exception v14

    :try_start_118
    const-string v2, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6

    :catchall_120
    move-exception v2

    monitor-exit v4
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_120

    throw v2

    :cond_123
    :try_start_123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_12a
    .catch Ljava/lang/InterruptedException; {:try_start_123 .. :try_end_12a} :catch_12b
    .catchall {:try_start_123 .. :try_end_12a} :catchall_120

    goto :goto_d6

    :catch_12b
    move-exception v2

    goto :goto_d6

    :catch_12d
    move-exception v2

    goto/16 :goto_9e
.end method
