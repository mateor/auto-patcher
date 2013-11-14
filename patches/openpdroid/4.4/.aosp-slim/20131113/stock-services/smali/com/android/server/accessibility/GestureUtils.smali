.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D
    .registers 7
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .registers 10
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    invoke-static {p0, p1, p4}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v0

    int-to-double v3, p3

    cmpl-double v3, v0, v3

    if-gez v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .registers 22
    .param p0    # F
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    sub-float v1, p4, p0

    sub-float v2, p5, p1

    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-nez v11, :cond_10

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-nez v11, :cond_10

    const/4 v11, 0x1

    :goto_f
    return v11

    :cond_10
    mul-float v11, v1, v1

    mul-float v12, v2, v2

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v3, v11

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_39

    div-float v4, v1, v3

    :goto_22
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_3b

    div-float v5, v2, v3

    :goto_29
    sub-float v6, p6, p2

    sub-float v7, p7, p3

    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-nez v11, :cond_3d

    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-nez v11, :cond_3d

    const/4 v11, 0x1

    goto :goto_f

    :cond_39
    move v4, v1

    goto :goto_22

    :cond_3b
    move v5, v2

    goto :goto_29

    :cond_3d
    mul-float v11, v6, v6

    mul-float v12, v7, v7

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_62

    div-float v9, v6, v8

    :goto_4f
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_64

    div-float v10, v7, v8

    :goto_56
    mul-float v11, v4, v9

    mul-float v12, v5, v10

    add-float v0, v11, v12

    cmpg-float v11, v0, p8

    if-gez v11, :cond_66

    const/4 v11, 0x0

    goto :goto_f

    :cond_62
    move v9, v6

    goto :goto_4f

    :cond_64
    move v10, v7

    goto :goto_56

    :cond_66
    const/4 v11, 0x1

    goto :goto_f
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .registers 6
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .registers 6
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 9
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method
