.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method handleFinished()V
    .registers 5

    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
