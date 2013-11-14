.class Lcom/android/server/RecognitionManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "RecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecognitionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RecognitionManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/RecognitionManagerService$1;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$1;->this$0:Lcom/android/server/RecognitionManagerService;

    # invokes: Lcom/android/server/RecognitionManagerService;->initForUser(I)V
    invoke-static {v2, v1}, Lcom/android/server/RecognitionManagerService;->access$000(Lcom/android/server/RecognitionManagerService;I)V

    :cond_1a
    return-void
.end method
