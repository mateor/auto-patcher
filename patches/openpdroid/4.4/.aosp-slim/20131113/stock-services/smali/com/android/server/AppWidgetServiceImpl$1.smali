.class Lcom/android/server/AppWidgetServiceImpl$1;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetServiceImpl;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetServiceImpl;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/AppWidgetServiceImpl$1;->val$intent:Landroid/content/Intent;

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
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_16

    :goto_9
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    iget-object v2, v2, Lcom/android/server/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_9
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1    # Landroid/content/ComponentName;

    return-void
.end method
