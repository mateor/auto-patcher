.class Lcom/android/server/AppWidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppWidgetService;->systemRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v2, -0x2710

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->onUserRemoved(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->onUserStopping(I)V

    goto :goto_19
.end method
