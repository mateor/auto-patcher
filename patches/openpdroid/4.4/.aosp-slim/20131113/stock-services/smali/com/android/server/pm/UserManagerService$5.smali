.class Lcom/android/server/pm/UserManagerService$5;
.super Lcom/android/internal/content/PackageMonitor;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$5;->getChangingUserId()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$5;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_1d

    if-ltz v1, :cond_1d

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z
    invoke-static {v2, p1, v1}, Lcom/android/server/pm/UserManagerService;->access$500(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    invoke-static {v2, p1, v1}, Lcom/android/server/pm/UserManagerService;->access$600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;I)V

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method
