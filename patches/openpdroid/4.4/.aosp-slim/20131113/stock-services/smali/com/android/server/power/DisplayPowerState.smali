.class final Lcom/android/server/power/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisplayPowerState"


# instance fields
.field private final mBacklight:Lcom/android/server/LightsService$Light;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mElectronBeam:Lcom/android/server/power/ElectronBeam;

.field private mElectronBeamDrawPending:Z

.field private final mElectronBeamDrawRunnable:Ljava/lang/Runnable;

.field private mElectronBeamLevel:F

.field private mElectronBeamPrepared:Z

.field private mElectronBeamReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

.field private mScreenBrightness:I

.field private mScreenOn:Z

.field private mScreenReady:Z

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    new-instance v0, Lcom/android/server/power/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/server/power/DisplayPowerState$2;

    const-string v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/power/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V
    .registers 7
    .param p1    # Lcom/android/server/power/ElectronBeam;
    .param p2    # Lcom/android/server/power/DisplayBlanker;
    .param p3    # Lcom/android/server/LightsService$Light;

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$3;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$4;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    iput-object p2, p0, Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iput-object p3, p0, Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;

    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/ElectronBeam;
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/DisplayPowerState;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/power/DisplayPowerState;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    return p1
.end method

.method static synthetic access$1200()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerState;)Z
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/DisplayPowerState;)V
    .registers 1
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerState;)F
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerState;)I
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/power/DisplayPowerState;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerState;)V
    .registers 1
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/power/DisplayPowerState;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerState;)Z
    .registers 2
    .param p0    # Lcom/android/server/power/DisplayPowerState;

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    return v0
.end method

.method private invokeCleanListenerIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleElectronBeamDraw()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private scheduleScreenUpdate()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V

    :cond_a
    return-void
.end method


# virtual methods
.method public dismissElectronBeam()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v0}, Lcom/android/server/power/ElectronBeam;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ElectronBeam;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getElectronBeamLevel()F
    .registers 2

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .registers 2

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public isScreenOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    return v0
.end method

.method public prepareElectronBeam(I)Z
    .registers 5
    .param p1    # I

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;

    invoke-virtual {v2, p1}, Lcom/android/server/power/ElectronBeam;->prepare(I)Z

    move-result v2

    if-nez v2, :cond_f

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    :goto_e
    return v0

    :cond_f
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleElectronBeamDraw()V

    move v0, v1

    goto :goto_e
.end method

.method public setElectronBeamLevel(F)V
    .registers 6
    .param p1    # F

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_37

    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setElectronBeamLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_2e

    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z

    if-eqz v0, :cond_37

    iput-boolean v3, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleElectronBeamDraw()V

    :cond_37
    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 5
    .param p1    # I

    iget v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    if-eq v0, p1, :cond_2c

    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_2c
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 5
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    if-eq v0, p1, :cond_28

    sget-boolean v0, Lcom/android/server/power/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "DisplayPowerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_28
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1    # Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z

    if-nez v0, :cond_c

    :cond_8
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    const/4 v0, 0x1

    goto :goto_b
.end method
