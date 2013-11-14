.class Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->unblockAllAppsForUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$4;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    const/16 v6, 0x2000

    iget v7, p0, Lcom/android/server/pm/UserManagerService$4;->val$userHandle:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1a

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x8000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/pm/UserManagerService$4;->val$userHandle:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_43

    goto :goto_1a

    :catchall_43
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
