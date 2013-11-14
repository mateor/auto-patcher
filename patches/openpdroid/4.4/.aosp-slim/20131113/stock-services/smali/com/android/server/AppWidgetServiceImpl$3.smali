.class Lcom/android/server/AppWidgetServiceImpl$3;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppWidgetServiceImpl;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    :try_start_4
    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChangedAsync()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_14

    :goto_7
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    iget-object v2, v2, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_7
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1    # Landroid/content/ComponentName;

    return-void
.end method
