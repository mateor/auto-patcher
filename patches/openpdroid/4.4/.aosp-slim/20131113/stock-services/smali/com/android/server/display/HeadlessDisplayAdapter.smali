.class final Lcom/android/server/display/HeadlessDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "HeadlessDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadlessDisplayAdapter"


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Lcom/android/server/display/DisplayAdapter$Listener;

    const-string v5, "HeadlessDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public registerLocked()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    new-instance v0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;

    invoke-direct {v0, p0}, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;-><init>(Lcom/android/server/display/HeadlessDisplayAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/HeadlessDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method
