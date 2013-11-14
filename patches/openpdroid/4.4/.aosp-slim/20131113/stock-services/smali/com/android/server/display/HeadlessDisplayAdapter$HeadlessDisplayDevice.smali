.class final Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "HeadlessDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HeadlessDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadlessDisplayDevice"
.end annotation


# instance fields
.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field final synthetic this$0:Lcom/android/server/display/HeadlessDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/HeadlessDisplayAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->this$0:Lcom/android/server/display/HeadlessDisplayAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 5

    const/high16 v3, 0x43200000

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_52

    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->this$0:Lcom/android/server/display/HeadlessDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/HeadlessDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104055b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0x280

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0x1e0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/high16 v1, 0x42700000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xa0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    :cond_52
    iget-object v0, p0, Lcom/android/server/display/HeadlessDisplayAdapter$HeadlessDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method
