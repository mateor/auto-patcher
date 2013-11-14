.class Lcom/android/server/MountService$UnmountCallBack;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountCallBack"
.end annotation


# instance fields
.field final force:Z

.field final path:Ljava/lang/String;

.field final removeEncryption:Z

.field retries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V
    .registers 6
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Z

    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    iput-boolean p4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    return-void
.end method


# virtual methods
.method handleFinished()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    # invokes: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    return-void
.end method
