.class Lcom/android/server/wm/WindowAnimator$1;
.super Ljava/lang/Object;
.source "WindowAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    # invokes: Lcom/android/server/wm/WindowAnimator;->animateLocked()V
    invoke-static {v0}, Lcom/android/server/wm/WindowAnimator;->access$000(Lcom/android/server/wm/WindowAnimator;)V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method
