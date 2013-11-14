.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mStackHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1    # Landroid/view/Display;
    .param p2    # Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/wm/WindowList;

    invoke-direct {v2}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v2}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_8c

    const/4 v2, 0x1

    :goto_72
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/StackBox;

    invoke-direct {v0, p2, p0, v4}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/wm/TaskStack;

    invoke-direct {v1, p2, v3, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-void

    :cond_8c
    move v2, v3

    goto :goto_72
.end method


# virtual methods
.method addStackBox(Lcom/android/server/wm/StackBox;Z)V
    .registers 5
    .param p1    # Lcom/android/server/wm/StackBox;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "addStackBox: Too many toplevel StackBoxes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1b
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method animateDimLayers()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method close()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method createStack(IIIF)Lcom/android/server/wm/TaskStack;
    .registers 14
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # F

    const/4 v8, 0x6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1c

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v5, :cond_15

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "createStack: HOME_STACK_ID (0) not first."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    :cond_17
    if-eqz v2, :cond_1b

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_1b
    return-object v2

    :cond_1c
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_24
    if-ltz v4, :cond_56

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    if-eq p3, v8, :cond_33

    const/4 v6, 0x7

    if-ne p3, v6, :cond_79

    :cond_33
    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_7f

    new-instance v1, Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    invoke-direct {v1, v6, p0, v7}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v6, p1, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    iput-object v1, v2, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iput-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne p3, v8, :cond_77

    move v3, v5

    :goto_4f
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int v7, v4, v3

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_56
    if-gez v4, :cond_17

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createStack: stackBoxId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_77
    const/4 v3, 0x0

    goto :goto_4f

    :cond_79
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v2, :cond_56

    :cond_7f
    add-int/lit8 v4, v4, -0x1

    goto :goto_24
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Display: mDisplayId="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "init="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v10, v11, :cond_58

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v10, v11, :cond_58

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v10, v11, :cond_7b

    :cond_58
    const-string v10, " base="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7b
    const-string v10, " cur="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " app="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " rng="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "-"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "layoutNeeded="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    const/4 v0, 0x0

    :goto_e9
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_11d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    :cond_11d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->numTokens()I

    move-result v2

    if-lez v2, :cond_175

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Application tokens in Z order:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    :goto_136
    if-ltz v5, :cond_175

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    move v3, v2

    :goto_149
    if-ltz v7, :cond_171

    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    const-string v10, "  App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "    "

    invoke-virtual {v9, p2, v10}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x1

    move v3, v2

    goto :goto_149

    :cond_171
    add-int/lit8 v5, v5, -0x1

    move v2, v3

    goto :goto_136

    :cond_175
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1b4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Exiting tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_18d
    if-ltz v1, :cond_1b4

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    const-string v10, "  Exiting #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_18d

    :cond_1b4
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    if-lez v10, :cond_1f3

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Exiting application tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_1cc
    if-ltz v1, :cond_1f3

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    const-string v10, "  Exiting App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1cc

    :cond_1f3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .registers 8
    .param p1    # Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .registers 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_19

    :goto_18
    return-object v0

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;
    .registers 6
    .param p1    # Lcom/android/server/wm/StackBox;

    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackBoxInfo;-><init>()V

    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    iget v1, p1, Lcom/android/server/wm/StackBox;->mWeight:F

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    iget-boolean v1, p1, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_25

    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    :goto_24
    return-object v0

    :cond_25
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/ActivityManager$StackBoxInfo;

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_24
.end method

.method getStackBoxInfos()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_d
    if-ltz v1, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_22

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    return-object v2
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method homeOnTop()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eq v0, v2, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method isDimming()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method public isPrivate()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method moveHomeStackBox(Z)Z
    .registers 5
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "moveHomeStackBox: Too many toplevel StackBoxes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2d
    :pswitch_2d
    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_2d
        :pswitch_1a
    .end packed-switch
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .registers 5
    .param p1    # Lcom/android/server/wm/TaskStack;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_f
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->moveStackWindowsLocked(Lcom/android/server/wm/TaskStack;)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method

.method numTokens()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_c
    if-ltz v1, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_20
    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;)V
    .registers 4
    .param p1    # Lcom/android/server/wm/StackBox;

    iget-object v0, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_9

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method resetDimming()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method resizeStack(IF)Z
    .registers 7
    .param p1    # I
    .param p2    # F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_1c

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :goto_1b
    return v2

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method setStackBoxSize(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1    # Landroid/graphics/Rect;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1c
    return v0
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .registers 9
    .param p1    # Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_11
    if-ltz v0, :cond_41

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eqz v1, :cond_3e

    if-eq v1, p1, :cond_3e

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_41
    return-void
.end method

.method stackIdFromPoint(II)I
    .registers 6
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v1

    return v1
.end method

.method stopDimmingIfNeeded()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method switchUserStacks(II)V
    .registers 8
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1e

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_26
    if-ltz v1, :cond_36

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_36
    return-void
.end method

.method updateDisplayInfo()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-void
.end method
