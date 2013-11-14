.class Lcom/android/server/dreams/DreamController$DreamRecord$2;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController$DreamRecord;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    # getter for: Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;
    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$2;->val$service:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    move-result-object v1

    # invokes: Lcom/android/server/dreams/DreamController;->attach(Landroid/service/dreams/IDreamService;)V
    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamController;->access$300(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V

    :cond_24
    return-void
.end method
