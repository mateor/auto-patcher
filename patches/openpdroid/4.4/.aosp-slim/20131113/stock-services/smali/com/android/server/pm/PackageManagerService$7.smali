.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILandroid/content/pm/IPackageDeleteObserver;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$userId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$userId:I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;II)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    if-eqz v2, :cond_1e

    :try_start_17
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
