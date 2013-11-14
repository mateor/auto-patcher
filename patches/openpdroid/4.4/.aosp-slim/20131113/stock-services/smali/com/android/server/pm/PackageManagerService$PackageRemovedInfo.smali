.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field removedAppId:I

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field uid:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-void
.end method


# virtual methods
.method sendBroadcast(ZZZ)V
    .registers 10
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_4d

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_f
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1e

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    const-string v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    if-eqz p1, :cond_3f

    if-nez p2, :cond_3f

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_3f
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_4c

    const-string v0, "android.intent.action.UID_REMOVED"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v1, v3

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_4c
    return-void

    :cond_4d
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_f
.end method
