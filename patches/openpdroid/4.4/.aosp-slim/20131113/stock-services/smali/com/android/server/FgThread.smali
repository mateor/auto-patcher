.class public final Lcom/android/server/FgThread;
.super Landroid/os/HandlerThread;
.source "FgThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/FgThread;


# direct methods
.method private constructor <init>()V
    .registers 3

    const-string v0, "android.fg"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 2

    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/server/FgThread;

    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/FgThread$1;

    invoke-direct {v1}, Lcom/android/server/FgThread$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .registers 2

    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
