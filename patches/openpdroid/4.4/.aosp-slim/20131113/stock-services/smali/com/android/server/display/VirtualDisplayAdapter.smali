.class final Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VirtualDisplayAdapter"


# instance fields
.field private final mVirtualDisplayDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Lcom/android/server/display/DisplayAdapter$Listener;

    const-string v5, "VirtualDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 2
    .param p0    # Lcom/android/server/display/VirtualDisplayAdapter;
    .param p1    # Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method private handleBinderDiedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz v0, :cond_2b

    const-string v1, "VirtualDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual display device released because application token died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked()V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)Lcom/android/server/display/DisplayDevice;
    .registers 25
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Landroid/view/Surface;
    .param p9    # I

    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_31

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p4

    invoke-static {v0, v14}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v3

    new-instance v1, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)V

    const/4 v2, 0x0

    :try_start_24
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_33

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    return-object v1

    :cond_31
    const/4 v14, 0x0

    goto :goto_5

    :catch_33
    move-exception v13

    invoke-virtual {v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked()V

    const/4 v1, 0x0

    goto :goto_30
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .registers 4
    .param p1    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked()V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_11
    return-object v0
.end method
