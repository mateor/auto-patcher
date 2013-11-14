.class Lcom/android/server/power/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v6

    sub-long v6, v1, v6

    long-to-float v6, v6

    const v7, 0x3089705f

    mul-float v5, v6, v7

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6, v1, v2}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_78

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    :goto_32
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    # setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$502(Lcom/android/server/power/RampAnimator;I)I

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    if-eq v3, v6, :cond_64

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_64
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_c1

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->postCallback()V
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)V

    :goto_77
    return-void

    :cond_78
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_a8

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto :goto_32

    :cond_a8
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_32

    :cond_c1
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$902(Lcom/android/server/power/RampAnimator;Z)Z

    goto :goto_77
.end method
