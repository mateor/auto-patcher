.class Lcom/android/server/TwilightService$1;
.super Landroid/content/BroadcastReceiver;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/TwilightService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TwilightService$1;->this$0:Lcom/android/server/TwilightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/TwilightService$1;->this$0:Lcom/android/server/TwilightService;

    # getter for: Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$800(Lcom/android/server/TwilightService;)Lcom/android/server/TwilightService$LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/TwilightService$LocationHandler;->requestLocationUpdate()V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/server/TwilightService$1;->this$0:Lcom/android/server/TwilightService;

    # getter for: Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$800(Lcom/android/server/TwilightService;)Lcom/android/server/TwilightService$LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/TwilightService$LocationHandler;->requestTwilightUpdate()V

    goto :goto_1e
.end method
