.class Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayContentsAnimator"
.end annotation


# instance fields
.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V
    .registers 3
    .param p1    # Lcom/android/server/wm/WindowAnimator;
    .param p2    # Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    return-void
.end method
