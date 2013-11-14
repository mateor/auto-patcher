.class public Lcom/android/server/AssetAtlasService;
.super Landroid/view/IAssetAtlas$Stub;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetAtlasService$ComputeWorker;,
        Lcom/android/server/AssetAtlasService$WorkerResult;,
        Lcom/android/server/AssetAtlasService$Configuration;,
        Lcom/android/server/AssetAtlasService$Renderer;
    }
.end annotation


# static fields
.field public static final ASSET_ATLAS_SERVICE:Ljava/lang/String; = "assetatlas"

.field private static final ATLAS_MAP_ENTRY_FIELD_COUNT:I = 0x4

.field private static final DEBUG_ATLAS:Z = true

.field private static final DEBUG_ATLAS_TEXTURE:Z = false

.field private static final GRAPHIC_BUFFER_USAGE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "Atlas"

.field private static final MAX_SIZE:I = 0x800

.field private static final MIN_SIZE:I = 0x300

.field private static final PACKING_THRESHOLD:F = 0.8f

.field private static final STEP:I = 0x40


# instance fields
.field private mAtlasMap:[I

.field private final mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Landroid/view/GraphicBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/IAssetAtlas$Stub;-><init>()V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/AssetAtlasService;->queryVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0x12c

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v2, :cond_4e

    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v7, v8, :cond_4b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4e
    new-instance v7, Lcom/android/server/AssetAtlasService$1;

    invoke-direct {v7, p0}, Lcom/android/server/AssetAtlasService$1;-><init>(Lcom/android/server/AssetAtlasService;)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/AssetAtlasService$Renderer;

    invoke-direct {v8, p0, v1, v6}, Lcom/android/server/AssetAtlasService$Renderer;-><init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/android/server/AssetAtlasService;

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 5
    .param p0    # Lcom/android/server/AssetAtlasService;
    .param p1    # Ljava/util/ArrayList;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;
    .registers 2
    .param p0    # Lcom/android/server/AssetAtlasService;

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;
    .registers 2
    .param p0    # Lcom/android/server/AssetAtlasService;
    .param p1    # Landroid/view/GraphicBuffer;

    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0    # Lcom/android/server/AssetAtlasService;

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AssetAtlasService;)[I
    .registers 2
    .param p0    # Lcom/android/server/AssetAtlasService;

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/AssetAtlasService;[I)[I
    .registers 2
    .param p0    # Lcom/android/server/AssetAtlasService;
    .param p1    # [I

    iput-object p1, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    return-object p1
.end method

.method static synthetic access$500()V
    .registers 0

    invoke-static {}, Lcom/android/server/AssetAtlasService;->deleteDataFile()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/GraphicBuffer;I)Z
    .registers 3
    .param p0    # Landroid/view/GraphicBuffer;
    .param p1    # I

    invoke-static {p0, p1}, Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/graphics/Canvas;II)I
    .registers 4
    .param p0    # Landroid/graphics/Canvas;
    .param p1    # I
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/graphics/Canvas;I)V
    .registers 2
    .param p0    # Landroid/graphics/Canvas;
    .param p1    # I

    invoke-static {p0, p1}, Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/io/BufferedReader;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 7
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0, v1, p3}, Lcom/android/server/AssetAtlasService;->readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    :cond_f
    if-nez v0, :cond_1a

    invoke-static {p1, p2}, Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/AssetAtlasService;->writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V

    :cond_1a
    return-object v0
.end method

.method private static computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 23
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    const-string v7, "Atlas"

    const-string v8, "Computing best atlas configuration..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v13

    const/4 v7, 0x1

    if-ne v13, v7, :cond_90

    new-instance v3, Lcom/android/server/AssetAtlasService$ComputeWorker;

    const/16 v4, 0x300

    const/16 v5, 0x800

    const/16 v6, 0x40

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3}, Lcom/android/server/AssetAtlasService$ComputeWorker;->run()V

    :goto_32
    new-instance v7, Lcom/android/server/AssetAtlasService$2;

    invoke-direct {v7}, Lcom/android/server/AssetAtlasService$2;-><init>()V

    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v11

    long-to-float v7, v7

    const/high16 v8, 0x447a0000

    div-float/2addr v7, v8

    const/high16 v8, 0x447a0000

    div-float/2addr v7, v8

    const/high16 v8, 0x447a0000

    div-float v14, v7, v8

    const-string v7, "Atlas"

    const-string v8, "Found best atlas configuration in %.2fs"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AssetAtlasService$WorkerResult;

    new-instance v7, Lcom/android/server/AssetAtlasService$Configuration;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;III)V

    :goto_8f
    return-object v7

    :cond_90
    const/16 v4, 0x300

    add-int/lit8 v7, v13, -0x1

    mul-int/lit8 v7, v7, 0x40

    rsub-int v5, v7, 0x800

    mul-int/lit8 v6, v13, 0x40

    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v16, 0x0

    :goto_a1
    move/from16 v0, v16

    if-ge v0, v13, :cond_d6

    new-instance v3, Lcom/android/server/AssetAtlasService$ComputeWorker;

    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Atlas Worker #"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v4, v4, 0x40

    add-int/lit8 v5, v5, 0x40

    goto :goto_a1

    :cond_d6
    const-wide/16 v7, 0xa

    :try_start_d8
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v18

    invoke-virtual {v10, v7, v8, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_df
    .catch Ljava/lang/InterruptedException; {:try_start_d8 .. :try_end_df} :catch_e1

    goto/16 :goto_32

    :catch_e1
    move-exception v15

    const-string v7, "Atlas"

    const-string v8, "Could not complete configuration computation"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_8f
.end method

.method private static deleteDataFile()V
    .registers 2

    const-string v0, "Atlas"

    const-string v1, "Current configuration inconsistent with assets list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/AssetAtlasService;->getDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Atlas"

    const-string v1, "Could not delete the current configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method

.method private getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/String;

    const/16 v3, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.fingerprint"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/AssetAtlasService;->getFrameworkResourcesFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFile()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "framework_atlas.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFrameworkResourcesFile()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/AssetAtlasService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)I
.end method

.method private static native nReleaseAtlasCanvas(Landroid/graphics/Canvas;I)V
.end method

.method private static native nUploadAtlas(Landroid/view/GraphicBuffer;I)Z
.end method

.method private static queryVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0    # Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-object v3

    :catch_10
    move-exception v0

    const-string v3, "Atlas"

    const-string v4, "Could not get package info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_f
.end method

.method private readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 16
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_11} :catch_72
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_95
    .catchall {:try_start_2 .. :try_end_11} :catchall_b8

    :try_start_11
    invoke-direct {p0, v9, p2}, Lcom/android/server/AssetAtlasService;->checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Atlas$Type;->valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;

    move-result-object v1

    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v2

    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v3

    const/4 v10, 0x0

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v4

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, Lcom/android/server/AssetAtlasService;->readInt(Ljava/io/BufferedReader;II)I

    move-result v5

    new-instance v0, Lcom/android/server/AssetAtlasService$Configuration;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_45} :catch_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_45} :catch_c7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_45} :catch_c4
    .catchall {:try_start_11 .. :try_end_45} :catchall_c1

    :goto_45
    if-eqz v9, :cond_d0

    :try_start_47
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    move-object v8, v9

    :goto_4b
    return-object v0

    :catch_4c
    move-exception v10

    move-object v8, v9

    goto :goto_4b

    :catch_4f
    move-exception v7

    :goto_50
    :try_start_50
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid parameter value in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_b8

    if-eqz v8, :cond_cd

    :try_start_6a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f

    move-object v0, v6

    goto :goto_4b

    :catch_6f
    move-exception v10

    move-object v0, v6

    goto :goto_4b

    :catch_72
    move-exception v7

    :goto_73
    :try_start_73
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_b8

    if-eqz v8, :cond_cd

    :try_start_8d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92

    move-object v0, v6

    goto :goto_4b

    :catch_92
    move-exception v10

    move-object v0, v6

    goto :goto_4b

    :catch_95
    move-exception v7

    :goto_96
    :try_start_96
    const-string v10, "Atlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b8

    if-eqz v8, :cond_cd

    :try_start_b0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b5

    move-object v0, v6

    goto :goto_4b

    :catch_b5
    move-exception v10

    move-object v0, v6

    goto :goto_4b

    :catchall_b8
    move-exception v10

    :goto_b9
    if-eqz v8, :cond_be

    :try_start_bb
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    :cond_be
    :goto_be
    throw v10

    :catch_bf
    move-exception v11

    goto :goto_be

    :catchall_c1
    move-exception v10

    move-object v8, v9

    goto :goto_b9

    :catch_c4
    move-exception v7

    move-object v8, v9

    goto :goto_96

    :catch_c7
    move-exception v7

    move-object v8, v9

    goto :goto_73

    :catch_ca
    move-exception v7

    move-object v8, v9

    goto :goto_50

    :cond_cd
    move-object v0, v6

    goto/16 :goto_4b

    :cond_d0
    move-object v8, v9

    goto/16 :goto_4b

    :cond_d3
    move-object v0, v6

    goto/16 :goto_45
.end method

.method private static readInt(Ljava/io/BufferedReader;II)I
    .registers 4
    .param p0    # Ljava/io/BufferedReader;
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .param p1    # Lcom/android/server/AssetAtlasService$Configuration;
    .param p2    # Ljava/io/File;
    .param p3    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_81
    .catchall {:try_start_1 .. :try_end_10} :catchall_a2

    :try_start_10
    invoke-direct {p0, p3}, Lcom/android/server/AssetAtlasService;->getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v3}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_56} :catch_b1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_56} :catch_ae
    .catchall {:try_start_10 .. :try_end_56} :catchall_ab

    if-eqz v2, :cond_b4

    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d

    move-object v1, v2

    :cond_5c
    :goto_5c
    return-void

    :catch_5d
    move-exception v3

    move-object v1, v2

    goto :goto_5c

    :catch_60
    move-exception v0

    :goto_61
    :try_start_61
    const-string v3, "Atlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_a2

    if-eqz v1, :cond_5c

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_5c

    :catch_7f
    move-exception v3

    goto :goto_5c

    :catch_81
    move-exception v0

    :goto_82
    :try_start_82
    const-string v3, "Atlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_a2

    if-eqz v1, :cond_5c

    :try_start_9c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_5c

    :catch_a0
    move-exception v3

    goto :goto_5c

    :catchall_a2
    move-exception v3

    :goto_a3
    if-eqz v1, :cond_a8

    :try_start_a5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    :cond_a8
    :goto_a8
    throw v3

    :catch_a9
    move-exception v4

    goto :goto_a8

    :catchall_ab
    move-exception v3

    move-object v1, v2

    goto :goto_a3

    :catch_ae
    move-exception v0

    move-object v1, v2

    goto :goto_82

    :catch_b1
    move-exception v0

    move-object v1, v2

    goto :goto_61

    :cond_b4
    move-object v1, v2

    goto :goto_5c
.end method


# virtual methods
.method public getBuffer()Landroid/view/GraphicBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMap()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/AssetAtlasService;->mAtlasMap:[I

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCompatible(I)Z
    .registers 3
    .param p1    # I

    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public systemRunning()V
    .registers 1

    return-void
.end method
