.class Lcom/android/server/net/LockdownVpnTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$1;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    return-void
.end method
