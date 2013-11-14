.class Lcom/android/server/pm/UserManagerService$1;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUser(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .registers 2
    .param p1    # I

    return-void
.end method

.method public userStopped(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    return-void
.end method
