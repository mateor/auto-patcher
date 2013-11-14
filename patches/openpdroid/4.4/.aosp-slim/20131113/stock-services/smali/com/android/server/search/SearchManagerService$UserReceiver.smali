.class final Lcom/android/server/search/SearchManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$UserReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/search/SearchManagerService;
    .param p2    # Lcom/android/server/search/SearchManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService$UserReceiver;-><init>(Lcom/android/server/search/SearchManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$UserReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/server/search/SearchManagerService;->onUserRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/search/SearchManagerService;->access$400(Lcom/android/server/search/SearchManagerService;I)V

    return-void
.end method
