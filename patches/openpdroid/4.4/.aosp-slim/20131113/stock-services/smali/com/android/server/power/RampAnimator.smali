.class final Lcom/android/server/power/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/RampAnimator;)J
    .registers 3
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/power/RampAnimator;J)J
    .registers 3
    .param p0    # Lcom/android/server/power/RampAnimator;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/power/RampAnimator;)F
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/RampAnimator;F)F
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;
    .param p1    # F

    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/RampAnimator;)I
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/RampAnimator;)I
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/RampAnimator;)I
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/RampAnimator;I)I
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;
    .param p1    # I

    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;

    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/RampAnimator;)V
    .registers 1
    .param p0    # Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/power/RampAnimator;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/power/RampAnimator;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    return p1
.end method

.method private postCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 7
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_12

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    :goto_11
    return v1

    :cond_12
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_2e

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_24

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_2e

    :cond_24
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_30

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_30

    :cond_2e
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    :cond_30
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_35

    move v0, v1

    :cond_35
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_4f

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_4f

    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_4f
    move v1, v0

    goto :goto_11
.end method
