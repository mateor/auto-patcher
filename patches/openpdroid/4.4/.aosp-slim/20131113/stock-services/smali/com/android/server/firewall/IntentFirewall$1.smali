.class Lcom/android/server/firewall/IntentFirewall$1;
.super Landroid/os/Handler;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method constructor <init>(Lcom/android/server/firewall/IntentFirewall;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$1;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$1;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v1

    # invokes: Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/android/server/firewall/IntentFirewall;->access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    return-void
.end method
