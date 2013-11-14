.class public interface abstract Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerCallbacks"
.end annotation


# virtual methods
.method public abstract dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract getPointerLayer()I
.end method

.method public abstract interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public abstract interceptMotionBeforeQueueingWhenScreenOff(I)I
.end method

.method public abstract notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
.end method

.method public abstract notifyConfigurationChanged()V
.end method

.method public abstract notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method
