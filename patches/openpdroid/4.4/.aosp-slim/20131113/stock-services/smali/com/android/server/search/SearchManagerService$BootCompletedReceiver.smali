.class final Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/search/SearchManagerService;
    .param p2    # Lcom/android/server/search/SearchManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/search/SearchManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    new-instance v0, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;-><init>(Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;)V

    invoke-virtual {v0}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver$1;->start()V

    return-void
.end method
