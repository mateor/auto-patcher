.class Lcom/android/server/dreams/DreamController$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-nez v0, :cond_28

    const-string v0, "DreamController"

    const-string v1, "Bound dream did not connect in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->stopDream()V

    :cond_28
    return-void
.end method
