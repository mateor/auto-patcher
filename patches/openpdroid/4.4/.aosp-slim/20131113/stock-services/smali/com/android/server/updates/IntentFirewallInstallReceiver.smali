.class public Lcom/android/server/updates/IntentFirewallInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "IntentFirewallInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ifw.xml"

    const-string v2, "metadata/"

    const-string v3, "gservices.version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
