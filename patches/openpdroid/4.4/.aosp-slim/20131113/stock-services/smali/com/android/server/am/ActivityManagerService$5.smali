.class final Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .registers 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
