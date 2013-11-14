.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field final flags:I

.field final installerPackageName:Ljava/lang/String;

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V
    .registers 7
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/pm/IPackageInstallObserver;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/content/pm/ManifestDigest;
    .param p6    # Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->manifestDigest:Landroid/content/pm/ManifestDigest;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method abstract checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract createCopyFile()V
.end method

.method doPostCopy(I)I
    .registers 3
    .param p1    # I

    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getNativeLibraryPath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isFwdLocked()Z
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
