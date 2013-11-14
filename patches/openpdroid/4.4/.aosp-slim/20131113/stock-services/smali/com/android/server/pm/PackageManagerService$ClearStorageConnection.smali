.class final Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClearStorageConnection"
.end annotation


# instance fields
.field mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/pm/PackageManagerService;
    .param p2    # Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1    # Landroid/content/ComponentName;

    return-void
.end method
