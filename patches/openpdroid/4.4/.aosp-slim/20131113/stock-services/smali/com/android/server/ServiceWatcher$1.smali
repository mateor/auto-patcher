.class Lcom/android/server/ServiceWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServiceWatcher;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->switchUser()V

    :cond_11
    return-void
.end method
