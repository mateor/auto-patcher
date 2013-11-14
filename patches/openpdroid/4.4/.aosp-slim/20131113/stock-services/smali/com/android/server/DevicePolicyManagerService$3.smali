.class Lcom/android/server/DevicePolicyManagerService$3;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$3;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/DevicePolicyManagerService$3;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$3;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/DevicePolicyManagerService$3;->val$userHandle:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method
