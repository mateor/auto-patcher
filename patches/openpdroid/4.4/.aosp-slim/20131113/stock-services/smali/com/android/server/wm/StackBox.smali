.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFirst:Lcom/android/server/wm/StackBox;

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field mTmpRect:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .registers 7
    .param p1    # Lcom/android/server/wm/WindowManagerService;
    .param p2    # Lcom/android/server/wm/DisplayContent;
    .param p3    # Lcom/android/server/wm/StackBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    :try_start_14
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method


# virtual methods
.method animateDimLayers()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_a
.end method

.method close()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_16
.end method

.method contains(I)Z
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_89

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_88
    return-void

    :cond_89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_88
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .registers 5
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, p1, :cond_12

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object v1, v0

    goto :goto_11

    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_11
.end method

.method getStackId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v0

    goto :goto_8
.end method

.method isDimming()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_a
.end method

.method isFirstChild()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method makeDirty()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    :cond_c
    return-void
.end method

.method remove()I
    .registers 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    const/4 v2, 0x0

    :goto_1c
    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :goto_27
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iput-object v0, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v0, :cond_45

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;Z)V

    :goto_3b
    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v2

    goto :goto_1c

    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_27

    :cond_45
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_50

    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_3b

    :cond_50
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_3b
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_9
.end method

.method resetDimming()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_9
.end method

.method resize(IF)Z
    .registers 6
    .param p1    # I
    .param p2    # F

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19

    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_2b

    :goto_28
    iput p2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_19

    :cond_2b
    const/high16 v2, 0x3f800000

    sub-float p2, v2, p2

    goto :goto_28
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .registers 11
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Z

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v6, p2, :cond_9

    const/4 v0, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const/4 v5, 0x1

    :cond_16
    or-int/2addr v0, v5

    if-eqz v0, :cond_23

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    :cond_23
    :goto_23
    return v0

    :cond_24
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v6, :cond_5f

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v6, v3

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_23

    :cond_5f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v5, v4

    iget v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_23
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .registers 13
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # F

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000

    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_1d

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_e

    move-object v2, v3

    :cond_d
    :goto_d
    return-object v2

    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v2, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_d

    :cond_1d
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    if-nez p3, :cond_60

    const/4 p3, 0x2

    :cond_29
    :goto_29
    packed-switch p3, :pswitch_data_80

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    const/4 v4, 0x2

    if-ne p3, v4, :cond_64

    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    move-object v0, v2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    :goto_37
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_d

    :cond_60
    if-ne p3, v7, :cond_29

    const/4 p3, 0x3

    goto :goto_29

    :cond_64
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    move-object v1, v2

    goto :goto_37

    :pswitch_6c
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    const/4 v4, 0x4

    if-ne p3, v4, :cond_77

    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    move-object v0, v2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_37

    :cond_77
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    move-object v1, v2

    goto :goto_37

    nop

    :pswitch_data_80
    .packed-switch 0x4
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .registers 5
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, -0x1

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_9

    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    if-gez v0, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_9
.end method

.method stopDimmingIfNeeded()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_9
.end method

.method switchUserStacks(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method
