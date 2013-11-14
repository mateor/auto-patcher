.class public interface abstract Lcom/android/server/display/WifiDisplayController$Listener;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
.end method

.method public abstract onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end method

.method public abstract onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
.end method

.method public abstract onDisplayConnectionFailed()V
.end method

.method public abstract onDisplayDisconnected()V
.end method

.method public abstract onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
.end method

.method public abstract onFeatureStateChanged(I)V
.end method

.method public abstract onScanFinished([Landroid/hardware/display/WifiDisplay;)V
.end method

.method public abstract onScanStarted()V
.end method
