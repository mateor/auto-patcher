.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method
