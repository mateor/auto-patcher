.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V
    .registers 20
    .param p1    # Landroid/view/SurfaceSession;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Landroid/graphics/Rect;
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v10, 0x0

    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    :try_start_2a
    iget v1, p2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4e

    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x0

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12

    :cond_4e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_72

    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x1

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12

    :cond_72
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_96

    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x2

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12

    :cond_96
    iget v1, p2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_ba

    iget-object v11, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v12, 0x3

    new-instance v1, Lcom/android/server/wm/BlackFrame$BlackSurface;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceSession;IIIIII)V

    aput-object v1, v11, v12
    :try_end_ba
    .catchall {:try_start_2a .. :try_end_ba} :catchall_c1

    :cond_ba
    const/4 v10, 0x1

    if-nez v10, :cond_c0

    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_c0
    return-void

    :catchall_c1
    move-exception v1

    if-nez v10, :cond_c7

    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_c7
    throw v1
.end method


# virtual methods
.method public clearMatrix()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix()V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method public hide()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v1, :cond_1c

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    return-void
.end method

.method public kill()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v1, :cond_21

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Outer: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " / Inner: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x0

    :goto_1b
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v2

    if-ge v1, v2, :cond_50

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v0, v2, v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_50
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .param p1    # F

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(F)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1    # Landroid/graphics/Matrix;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method
