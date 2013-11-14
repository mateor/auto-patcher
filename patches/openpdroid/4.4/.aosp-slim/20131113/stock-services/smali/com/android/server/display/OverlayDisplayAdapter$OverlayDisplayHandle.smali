.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/OverlayDisplayWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayHandle"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mGravity:I

.field private final mHeight:I

.field private final mName:Ljava/lang/String;

.field private final mSecure:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mWidth:I

.field private mWindow:Lcom/android/server/display/OverlayDisplayWindow;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;IIIIZ)V
    .registers 10
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Z

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$2;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    iput p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    iput-boolean p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;
    .registers 2
    .param p0    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p1    # Lcom/android/server/display/OverlayDisplayWindow;

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    return-object p1
.end method


# virtual methods
.method public dismissLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1    # Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDensityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mGravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSecure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-eqz v1, :cond_b1

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    :cond_b1
    return-void
.end method

.method public onWindowCreated(Landroid/graphics/SurfaceTexture;F)V
    .registers 14
    .param p1    # Landroid/graphics/SurfaceTexture;
    .param p2    # F

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v10

    monitor-enter v10

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWidth:I

    iget v5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mHeight:I

    iget v7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDensityDpi:I

    iget-boolean v8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mSecure:Z

    move v6, p2

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFIZLandroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    monitor-exit v10

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v10
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public onWindowDestroyed()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->destroyLocked()V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mDevice:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v0
.end method
