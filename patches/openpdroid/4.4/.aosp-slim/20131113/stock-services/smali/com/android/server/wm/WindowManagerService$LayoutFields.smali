.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field private static final DISPLAY_CONTENT_MIRROR:I = 0x1

.field private static final DISPLAY_CONTENT_UNIQUE:I = 0x2

.field private static final DISPLAY_CONTENT_UNKNOWN:I = 0x0

.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field private mDisplayHasContent:I

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/4 v3, 0x0

    const/high16 v1, -0x40800000

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    iput v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # Lcom/android/server/wm/Session;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # F

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # F

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 3
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)I
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # I

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method
