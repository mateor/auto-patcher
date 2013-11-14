.class Lcom/android/server/firewall/PortFilter;
.super Ljava/lang/Object;
.source "PortFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_MAX:Ljava/lang/String; = "max"

.field private static final ATTR_MIN:Ljava/lang/String; = "min"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final NO_BOUND:I = -0x1


# instance fields
.field private final mLowerBound:I

.field private final mUpperBound:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/firewall/PortFilter$1;

    const-string v1, "port"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/PortFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .param p1    # I
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    iput p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/firewall/PortFilter$1;)V
    .registers 4
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/server/firewall/PortFilter$1;

    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/PortFilter;-><init>(II)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 12
    .param p1    # Lcom/android/server/firewall/IntentFirewall;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/content/Intent;
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # I

    const/4 v3, -0x1

    const/4 v0, -0x1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    :cond_c
    if-eq v0, v3, :cond_20

    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-eq v2, v3, :cond_16

    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-gt v2, v0, :cond_20

    :cond_16
    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-eq v2, v3, :cond_1e

    iget v2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-lt v2, v0, :cond_20

    :cond_1e
    const/4 v2, 0x1

    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method
