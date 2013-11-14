.class Lcom/android/server/accounts/AccountManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$2;->this$0:Lcom/android/server/accounts/AccountManagerService;

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

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$2;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$100(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$2;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->onUserStarted(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$200(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V

    goto :goto_11
.end method
