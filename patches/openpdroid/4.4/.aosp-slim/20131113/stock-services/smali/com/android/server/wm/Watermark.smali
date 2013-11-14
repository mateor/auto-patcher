.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .registers 27
    .param p1    # Landroid/view/Display;
    .param p2    # Landroid/util/DisplayMetrics;
    .param p3    # Landroid/view/SurfaceSession;
    .param p4    # [Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    and-int/lit8 v17, v17, -0x2

    const/16 v16, 0x0

    :goto_2e
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_92

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v3, 0x61

    if-lt v10, v3, :cond_72

    const/16 v3, 0x66

    if-gt v10, v3, :cond_72

    add-int/lit8 v3, v10, -0x61

    add-int/lit8 v10, v3, 0xa

    :goto_5a
    const/16 v3, 0x61

    if-lt v11, v3, :cond_82

    const/16 v3, 0x66

    if-gt v11, v3, :cond_82

    add-int/lit8 v3, v11, -0x61

    add-int/lit8 v11, v3, 0xa

    :goto_66
    mul-int/lit8 v3, v10, 0x10

    add-int/2addr v3, v11

    rsub-int v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v16, 0x2

    goto :goto_2e

    :cond_72
    const/16 v3, 0x41

    if-lt v10, v3, :cond_7f

    const/16 v3, 0x46

    if-gt v10, v3, :cond_7f

    add-int/lit8 v3, v10, -0x41

    add-int/lit8 v10, v3, 0xa

    goto :goto_5a

    :cond_7f
    add-int/lit8 v10, v10, -0x30

    goto :goto_5a

    :cond_82
    const/16 v3, 0x41

    if-lt v11, v3, :cond_8f

    const/16 v3, 0x46

    if-gt v11, v3, :cond_8f

    add-int/lit8 v3, v11, -0x41

    add-int/lit8 v11, v3, 0xa

    goto :goto_66

    :cond_8f
    add-int/lit8 v11, v11, -0x30

    goto :goto_66

    :cond_92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x14

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v15

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v4, v15

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    iget v3, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, -0x50000000

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v18

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v5, 0x60ffffff

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v21

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v19

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v19

    int-to-float v5, v0

    move/from16 v0, v20

    int-to-float v6, v0

    move/from16 v0, v18

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v13, 0x0

    :try_start_166
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v4, "WatermarkSurface"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x4

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_173
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_166 .. :try_end_173} :catch_198

    :try_start_173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_193
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_173 .. :try_end_193} :catch_19b

    :goto_193
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void

    :catch_198
    move-exception v3

    move-object v2, v13

    goto :goto_193

    :catch_19b
    move-exception v3

    goto :goto_193
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 16

    const/4 v12, 0x0

    iget-boolean v11, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v11, :cond_5b

    iget v6, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iget v3, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iput-boolean v12, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v12, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    :try_start_11
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_5e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_16} :catch_5c

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_5b

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    div-int v5, v11, v1

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    mul-int v12, v5, v1

    sub-int v8, v11, v12

    div-int/lit8 v7, v1, 0x4

    if-lt v8, v7, :cond_36

    sub-int v11, v1, v7

    if-le v8, v11, :cond_39

    :cond_36
    div-int/lit8 v11, v1, 0x3

    add-int/2addr v1, v11

    :cond_39
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v10, v11

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v9, v11

    :cond_3f
    :goto_3f
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_56

    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v9

    int-to-float v13, v10

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v9, v1

    if-lt v9, v6, :cond_3f

    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    add-int/2addr v10, v2

    goto :goto_3f

    :cond_56
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5b
    return-void

    :catch_5c
    move-exception v11

    goto :goto_17

    :catch_5e
    move-exception v11

    goto :goto_17
.end method

.method positionSurface(II)V
    .registers 4
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    :cond_8
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    :cond_14
    return-void
.end method
