.class public Lcom/android/server/am/ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# instance fields
.field lastDescription:Ljava/lang/CharSequence;

.field lastThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method disposeThumbnail()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    return-void
.end method
