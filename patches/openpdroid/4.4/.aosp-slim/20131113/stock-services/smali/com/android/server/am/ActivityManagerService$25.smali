.class Lcom/android/server/am/ActivityManagerService$25;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$uss:Lcom/android/server/am/UserStartedState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserStartedState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$25;->val$uss:Lcom/android/server/am/UserStartedState;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 10
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Z
    .param p6    # Z
    .param p7    # I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$25;->val$uss:Lcom/android/server/am/UserStartedState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->finishUserStop(Lcom/android/server/am/UserStartedState;)V

    return-void
.end method
