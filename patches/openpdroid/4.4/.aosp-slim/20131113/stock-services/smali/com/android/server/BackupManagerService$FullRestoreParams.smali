.class Lcom/android/server/BackupManagerService$FullRestoreParams;
.super Lcom/android/server/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullRestoreParams"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p2    # Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/android/server/BackupManagerService$FullRestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$FullParams;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
