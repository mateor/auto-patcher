.class Lcom/android/server/firewall/NotFilter;
.super Ljava/lang/Object;
.source "NotFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mChild:Lcom/android/server/firewall/Filter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/firewall/NotFilter$1;

    const-string v1, "not"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/NotFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/firewall/Filter;)V
    .registers 2
    .param p1    # Lcom/android/server/firewall/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/NotFilter;->mChild:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/Filter;Lcom/android/server/firewall/NotFilter$1;)V
    .registers 3
    .param p1    # Lcom/android/server/firewall/Filter;
    .param p2    # Lcom/android/server/firewall/NotFilter$1;

    invoke-direct {p0, p1}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 16
    .param p1    # Lcom/android/server/firewall/IntentFirewall;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/content/Intent;
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # I

    iget-object v0, p0, Lcom/android/server/firewall/NotFilter;->mChild:Lcom/android/server/firewall/Filter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/server/firewall/Filter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
