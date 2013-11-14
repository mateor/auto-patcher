.class Lcom/android/server/display/OverlayDisplayWindow$2;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayWindow;->access$200(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->refreshRate:F

    invoke-interface {v0, p1, v1}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onWindowCreated(Landroid/graphics/SurfaceTexture;F)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1    # Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$2;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mListener:Lcom/android/server/display/OverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$300(Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/OverlayDisplayWindow$Listener;->onWindowDestroyed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1    # Landroid/graphics/SurfaceTexture;

    return-void
.end method
