.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mUserId:I

.field final taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/TaskStack;I)V
    .registers 5
    .param p1    # Lcom/android/server/wm/AppWindowToken;
    .param p2    # Lcom/android/server/wm/TaskStack;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iput v0, p0, Lcom/android/server/wm/Task;->taskId:I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    return-void
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1    # I
    .param p2    # Lcom/android/server/wm/AppWindowToken;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3
    .param p1    # Lcom/android/server/wm/AppWindowToken;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
