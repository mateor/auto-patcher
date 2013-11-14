.class Lcom/android/server/ClipboardService$PerUserClipboard;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserClipboard"
.end annotation


# instance fields
.field final activePermissionOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field primaryClip:Landroid/content/ClipData;

.field final primaryClipListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/IOnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ClipboardService;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/ClipboardService;I)V
    .registers 4
    .param p2    # I

    iput-object p1, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->this$0:Lcom/android/server/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    iput p2, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->userId:I

    return-void
.end method
