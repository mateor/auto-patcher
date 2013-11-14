.class Lcom/android/server/print/UserState$PrintJobForAppCache$1;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field final synthetic val$appId:I

.field final synthetic val$creator:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iput-object p2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    # getter for: Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/print/UserState$PrintJobForAppCache;->access$2000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v0
.end method
