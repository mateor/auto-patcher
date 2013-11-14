.class Lcom/android/server/dreams/DreamController$2;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController;->stopDream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;

.field final synthetic val$oldDream:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$2;->this$0:Lcom/android/server/dreams/DreamController;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController$2;->val$oldDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$2;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamController$Listener;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$100(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$2;->val$oldDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v1, v1, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/server/dreams/DreamController$Listener;->onDreamStopped(Landroid/os/Binder;)V

    return-void
.end method
