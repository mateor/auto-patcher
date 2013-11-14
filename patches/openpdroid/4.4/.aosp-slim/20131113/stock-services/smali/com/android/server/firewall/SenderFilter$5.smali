.class final Lcom/android/server/firewall/SenderFilter$5;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 14
    .param p1    # Lcom/android/server/firewall/IntentFirewall;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/content/Intent;
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # I

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p5

    move v3, p4

    move v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Ljava/lang/String;IIIZ)Z

    move-result v0

    return v0
.end method
