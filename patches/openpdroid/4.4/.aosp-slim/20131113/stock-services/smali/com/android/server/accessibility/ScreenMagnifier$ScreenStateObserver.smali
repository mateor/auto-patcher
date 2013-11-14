.class final Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateObserver"
.end annotation


# static fields
.field private static final MESSAGE_ON_SCREEN_STATE_CHANGE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V
    .registers 7
    .param p2    # Landroid/content/Context;
    .param p3    # Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;Ljava/lang/String;)V
    .registers 2
    .param p0    # Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->handleOnScreenStateChange(Ljava/lang/String;)V

    return-void
.end method

.method private handleOnScreenStateChange(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3000(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    :cond_16
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
