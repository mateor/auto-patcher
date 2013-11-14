.class Lcom/android/server/AssetAtlasService$ComputeWorker;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeWorker"
.end annotation


# instance fields
.field private final mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnd:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mStart:I

.field private final mStep:I

.field private final mThreshold:I


# direct methods
.method constructor <init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .registers 11
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p5    # I
    .param p7    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    iput p2, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    iput p3, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    iput-object p4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    iput-object p7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    int-to-float v1, p5

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    float-to-int v0, v1

    :goto_15
    const/high16 v1, 0x400000

    if-le v0, v1, :cond_1c

    shr-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1c
    iput v0, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    return-void
.end method

.method private packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I
    .registers 12
    .param p1    # Landroid/graphics/Atlas$Type;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/graphics/Atlas$Entry;

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Atlas;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;II)V

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2a

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6, p4}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v5

    if-eqz v5, :cond_27

    add-int/lit8 v4, v4, 0x1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2a
    return v4
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v8, "Atlas"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Running "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Atlas$Entry;

    invoke-direct {v2}, Landroid/graphics/Atlas$Entry;-><init>()V

    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v5, :cond_63

    aget-object v6, v0, v4

    iget v7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    :goto_31
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    if-ge v7, v8, :cond_60

    const/16 v3, 0x300

    :goto_37
    const/16 v8, 0x800

    if-ge v3, v8, :cond_5c

    mul-int v8, v7, v3

    iget v9, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    if-gt v8, v9, :cond_44

    :cond_41
    add-int/lit8 v3, v3, 0x40

    goto :goto_37

    :cond_44
    invoke-direct {p0, v6, v7, v3, v2}, Lcom/android/server/AssetAtlasService$ComputeWorker;->packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I

    move-result v1

    if-lez v1, :cond_41

    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    new-instance v9, Lcom/android/server/AssetAtlasService$WorkerResult;

    invoke-direct {v9, v6, v7, v3, v1}, Lcom/android/server/AssetAtlasService$WorkerResult;-><init>(Landroid/graphics/Atlas$Type;III)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v1, v8, :cond_41

    :cond_5c
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    add-int/2addr v7, v8

    goto :goto_31

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_63
    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v8, :cond_6c

    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_6c
    return-void
.end method
