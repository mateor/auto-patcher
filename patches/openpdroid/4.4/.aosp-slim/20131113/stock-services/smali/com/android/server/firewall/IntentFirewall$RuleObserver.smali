.class Lcom/android/server/firewall/IntentFirewall$RuleObserver;
.super Landroid/os/FileObserver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleObserver"
.end annotation


# static fields
.field private static final MONITORED_EVENTS:I = 0x3c8


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .registers 5
    .param p2    # Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 7
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    iget-object v0, v0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    iget-object v0, v0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    return-void
.end method
