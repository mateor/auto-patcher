.class Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    # invokes: Lcom/android/server/WiredAccessoryManager;->bootCompleted()V
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$000(Lcom/android/server/WiredAccessoryManager;)V

    return-void
.end method
