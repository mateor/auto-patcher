.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

.field private final mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Lcom/android/server/display/DisplayAdapter$Listener;

    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2
    .param p0    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2
    .param p0    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V

    return-void
.end method

.method private tryConnectDisplayLocked(I)V
    .registers 5
    .param p1    # I

    invoke-static {p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->getDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v0, :cond_29

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;ILandroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_28
.end method

.method private tryDisconnectDisplayLocked(I)V
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_13
    return-void
.end method


# virtual methods
.method public registerLocked()V
    .registers 7

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    new-instance v4, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    sget-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v3, :cond_20

    aget v1, v0, v2

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    return-void
.end method
