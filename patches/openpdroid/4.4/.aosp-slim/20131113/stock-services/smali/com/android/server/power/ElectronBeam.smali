.class final Lcom/android/server/power/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_SCALE_DOWN:I = 0x3

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private mDisplayHeight:I

.field private mDisplayLayerStack:I

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mElectronBeamMode:I

.field private mMode:I

.field private mPrepared:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mTexMatrix:[F

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 5
    .param p1    # Lcom/android/server/display/DisplayManagerService;
    .param p2    # I

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    iput p2, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    return-void
.end method

.method private attachEglContext()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_5

    :cond_1a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-nez v1, :cond_23

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_c1

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_8

    :cond_20
    const/4 v0, 0x1

    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    :cond_23
    new-instance v7, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v7, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v7}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_c1

    const/4 v0, 0x0

    :try_start_33
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_bc

    :try_start_3a
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    invoke-virtual {v7, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    const/16 v0, 0x1702

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_b6
    .catchall {:try_start_3a .. :try_end_b6} :catchall_c1

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    move v0, v8

    goto/16 :goto_8

    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2a

    const-string v2, "ElectronBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, 0x1

    goto :goto_1

    :cond_2c
    return v1
.end method

.method private createEglContext()Z
    .registers 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_2c

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_18

    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    :goto_17
    return v2

    :cond_18
    const/4 v0, 0x2

    new-array v9, v0, [I

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_50

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_72

    new-array v6, v10, [I

    new-array v3, v10, [Landroid/opengl/EGLConfig;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    :cond_4c
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    :cond_50
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_70

    new-array v8, v10, [I

    const/16 v0, 0x3038

    aput v0, v8, v2

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_70

    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    :cond_70
    move v2, v10

    goto :goto_17

    :array_72
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_22

    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_22

    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    :goto_21
    return v1

    :cond_22
    move v1, v2

    goto :goto_21
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0    # I

    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_e
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_6d

    if-nez v0, :cond_2a

    :try_start_12
    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    const v6, 0x20004

    :goto_1a
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ElectronBeam"

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_2a} :catch_60
    .catchall {:try_start_12 .. :try_end_2a} :catchall_6d

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    new-instance v0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_6d

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    const/4 v0, 0x1

    :goto_5c
    return v0

    :cond_5d
    const/16 v6, 0x404

    goto :goto_1a

    :catch_60
    move-exception v7

    :try_start_61
    const-string v0, "ElectronBeam"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_6d

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_5c

    :catchall_6d
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->logEglError(Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_16
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNamesGenerated:Z

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :try_start_e
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private destroySurface()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->dispose()V

    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_f
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_25

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    iput-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    :cond_24
    return-void

    :catchall_25
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_f
    return-void
.end method

.method private drawHStretch(F)V
    .registers 10
    .param p1    # F

    const v7, 0x8074

    const/4 v6, 0x0

    const/high16 v5, 0x3f400000

    const/high16 v4, 0x3f800000

    const/high16 v1, 0x41000000

    invoke-static {p1, v1}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    cmpg-float v1, p1, v4

    if-gez v1, :cond_3f

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v6, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-static {v7}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/power/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    mul-float v1, v0, v5

    sub-float v1, v4, v1

    mul-float v2, v0, v5

    sub-float v2, v4, v2

    mul-float v3, v0, v5

    sub-float v3, v4, v3

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v6, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {v7}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    :cond_3f
    return-void
.end method

.method private drawScaled(F)V
    .registers 13
    .param p1    # F

    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x8d65

    const/high16 v1, 0x41000000

    invoke-static {p1, v1}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v7, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisable(I)V

    invoke-static {v6}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v1, v1, v7

    invoke-static {v6, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v1, :cond_b7

    const/16 v1, 0x2100

    :goto_41
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v6, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v6, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v6, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v6, v1, v2}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    invoke-static {v6}, Landroid/opengl/GLES10;->glEnable(I)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2, v7, v3}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v3, v10, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v4, v10, v0

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v7, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {v6}, Landroid/opengl/GLES10;->glDisable(I)V

    const v1, 0x8078

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    sub-float v1, v10, v0

    invoke-static {v9, v9, v9, v1}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v7, v2}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisable(I)V

    return-void

    :cond_b7
    const/16 v1, 0x1e01

    goto :goto_41
.end method

.method private drawVStretch(F)V
    .registers 13
    .param p1    # F

    const/4 v10, 0x6

    const/4 v9, 0x4

    const v8, 0x8d65

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v3, 0x40f00000

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v2

    const/high16 v3, 0x41000000

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v1

    const/high16 v3, 0x41080000

    invoke-static {p1, v3}, Lcom/android/server/power/ElectronBeam;->scurve(FF)F

    move-result v0

    invoke-static {v7, v7}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    const/16 v3, 0xde1

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mTexNames:[I

    aget v3, v3, v6

    invoke-static {v8, v3}, Landroid/opengl/GLES10;->glBindTexture(II)V

    const/16 v4, 0x2300

    const/16 v5, 0x2200

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-nez v3, :cond_d1

    const/16 v3, 0x2100

    :goto_48
    invoke-static {v4, v5, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v8, v3, v4}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/android/server/power/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v4, v6, v5}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    invoke-static {v7, v6, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    invoke-static {v6, v7, v6, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    iget-object v3, p0, Lcom/android/server/power/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/power/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    invoke-static {v6, v6, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    const v3, 0x8078

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    iget v3, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-ne v3, v7, :cond_c5

    const/high16 v3, 0x3f800000

    invoke-static {v1, v1, v1, v3}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    invoke-static {v10, v6, v9}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    :cond_c5
    const v3, 0x8074

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    return-void

    :cond_d1
    const/16 v3, 0x1e01

    goto/16 :goto_48
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0    # Ljava/lang/String;

    const-string v0, "ElectronBeam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static scurve(FF)F
    .registers 7
    .param p0    # F
    .param p1    # F

    const/high16 v4, 0x3f000000

    sub-float v1, p0, v4

    invoke-static {v1, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v2, v3, v4

    invoke-static {v4, p1}, Lcom/android/server/power/ElectronBeam;->sigmoid(FF)F

    move-result v3

    sub-float v0, v3, v4

    div-float v3, v2, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    return v3
.end method

.method private setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .registers 12
    .param p1    # Ljava/nio/FloatBuffer;
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/high16 v6, 0x3f000000

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_26

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v4}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_14
    const/high16 v1, 0x3f800000

    mul-float v4, p2, p4

    add-float v0, p2, v4

    :goto_1a
    sub-float v4, p2, v1

    mul-float v2, v4, v6

    sub-float v4, p3, v0

    mul-float v3, v4, v6

    invoke-static {p1, v2, v3, v1, v0}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    return-void

    :cond_26
    mul-float v4, p2, p4

    add-float v1, p2, v4

    const/high16 v0, 0x3f800000

    goto :goto_1a
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0    # Ljava/nio/FloatBuffer;
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .registers 12
    .param p1    # Ljava/nio/FloatBuffer;
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/high16 v6, 0x3f000000

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    iget v4, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_28

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v4}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_14
    mul-float v4, p2, p4

    sub-float v1, p2, v4

    mul-float v4, p3, p4

    add-float v0, p3, v4

    :goto_1c
    sub-float v4, p2, v1

    mul-float v2, v4, v6

    sub-float v4, p3, v0

    mul-float v3, v4, v6

    invoke-static {p1, v2, v3, v1, v0}, Lcom/android/server/power/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    return-void

    :cond_28
    mul-float v4, p2, p4

    add-float v1, p2, v4

    mul-float v4, p3, p4

    sub-float v0, p3, v4

    goto :goto_1c
.end method

.method private showSurface(F)Z
    .registers 5
    .param p1    # F

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_27

    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_e
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x40000001

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_28

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    iput-boolean v2, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    :cond_27
    return v2

    :catchall_28
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private static sigmoid(FF)F
    .registers 4
    .param p0    # F
    .param p1    # F

    const/high16 v1, 0x3f800000

    neg-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->exp(F)F

    move-result v0

    add-float/2addr v0, v1

    div-float v0, v1, v0

    return v0
.end method

.method private tryPrepare()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_20
    move v0, v1

    goto :goto_d

    :cond_22
    move v0, v1

    goto :goto_d
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyScreenshotTexture()V

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroyEglSurface()V

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->destroySurface()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    return-void
.end method

.method public draw(F)Z
    .registers 10
    .param p1    # F

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000

    const/high16 v5, 0x3f000000

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    if-ne v1, v7, :cond_16

    sub-float v0, v6, p1

    invoke-direct {p0, v0}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto :goto_a

    :cond_16
    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    :try_start_25
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES10;->glClear(I)V

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    if-eq v1, v7, :cond_3e

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_63

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceLayout:Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v1}, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_63

    :cond_3e
    cmpg-float v1, p1, v5

    if-gez v1, :cond_55

    div-float v1, p1, v5

    sub-float v1, v6, v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawHStretch(F)V

    :goto_49
    const-string v1, "drawFrame"

    invoke-static {v1}, Lcom/android/server/power/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_5e

    move-result v1

    if-eqz v1, :cond_81

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    goto :goto_a

    :cond_55
    sub-float v1, p1, v5

    div-float/2addr v1, v5

    sub-float v1, v6, v1

    :try_start_5a
    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawVStretch(F)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_49

    :catchall_5e
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    throw v0

    :cond_63
    :try_start_63
    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mElectronBeamMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6c

    invoke-direct {p0, p1}, Lcom/android/server/power/ElectronBeam;->drawScaled(F)V

    goto :goto_49

    :cond_6c
    cmpg-float v1, p1, v5

    if-gez v1, :cond_78

    div-float v1, p1, v5

    sub-float v1, v6, v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawHStretch(F)V

    goto :goto_49

    :cond_78
    sub-float v1, p1, v5

    div-float/2addr v1, v5

    sub-float v1, v6, v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ElectronBeam;->drawVStretch(F)V

    goto :goto_49

    :cond_81
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/power/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_88
    .catchall {:try_start_63 .. :try_end_88} :catchall_5e

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->detachEglContext()V

    invoke-direct {p0, v6}, Lcom/android/server/power/ElectronBeam;->showSurface(F)Z

    move-result v0

    goto/16 :goto_a
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public prepare(I)Z
    .registers 8
    .param p1    # I

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iput p1, p0, Lcom/android/server/power/ElectronBeam;->mMode:I

    iget-object v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v4, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/ElectronBeam;->mDisplayHeight:I

    invoke-direct {p0}, Lcom/android/server/power/ElectronBeam;->tryPrepare()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {p0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    :goto_24
    return v2

    :cond_25
    iput-boolean v3, p0, Lcom/android/server/power/ElectronBeam;->mPrepared:Z

    if-eq p1, v3, :cond_2b

    if-ne p1, v5, :cond_36

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v5, :cond_36

    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/android/server/power/ElectronBeam;->draw(F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_36
    move v2, v3

    goto :goto_24
.end method
