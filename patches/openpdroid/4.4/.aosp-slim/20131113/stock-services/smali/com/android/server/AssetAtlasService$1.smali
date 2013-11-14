.class Lcom/android/server/AssetAtlasService$1;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AssetAtlasService$1;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .registers 5
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_14

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AssetAtlasService$1;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
