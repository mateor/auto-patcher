.class Lcom/android/server/pm/PackageManagerService$PostInstallData;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostInstallData"
.end annotation


# instance fields
.field public args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .registers 4
    .param p2    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p3    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    return-void
.end method
