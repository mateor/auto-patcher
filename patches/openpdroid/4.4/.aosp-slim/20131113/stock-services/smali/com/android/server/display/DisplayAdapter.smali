.class abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayAdapter$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_DEVICE_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_DEVICE_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_DEVICE_EVENT_REMOVED:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field private final mName:Ljava/lang/String;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V
    .registers 6
    .param p1    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayAdapter;)Lcom/android/server/display/DisplayAdapter$Listener;
    .registers 2
    .param p0    # Lcom/android/server/display/DisplayAdapter;

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1    # Ljava/io/PrintWriter;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method public registerLocked()V
    .registers 1

    return-void
.end method

.method protected final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 5
    .param p1    # Lcom/android/server/display/DisplayDevice;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final sendTraversalRequestLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$2;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
