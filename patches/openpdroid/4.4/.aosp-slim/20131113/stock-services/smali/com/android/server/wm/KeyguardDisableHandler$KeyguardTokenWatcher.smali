.class Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardTokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V
    .registers 4
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const-string v0, "KeyguardDisableHandler"

    invoke-direct {p0, p2, v0}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    # getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, v1, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_30

    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    if-nez v1, :cond_40

    move v1, v2

    :goto_2d
    # setter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v4, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_4a

    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    # getter for: Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I
    invoke-static {v1}, Lcom/android/server/wm/KeyguardDisableHandler;->access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I

    move-result v1

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, v1, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    :goto_3f
    return-void

    :cond_40
    move v1, v3

    goto :goto_2d

    :cond_42
    const-string v1, "KeyguardDisableHandler"

    const-string v2, "Not disabling keyguard since device policy is enforced"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_4a
    move-exception v1

    goto :goto_30
.end method

.method public released()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    return-void
.end method
