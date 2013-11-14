.class Lcom/android/server/firewall/CategoryFilter;
.super Ljava/lang/Object;
.source "CategoryFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mCategoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/firewall/CategoryFilter$1;

    const-string v1, "category"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/CategoryFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/CategoryFilter;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/CategoryFilter$1;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/firewall/CategoryFilter$1;

    invoke-direct {p0, p1}, Lcom/android/server/firewall/CategoryFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 10
    .param p1    # Lcom/android/server/firewall/IntentFirewall;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/content/Intent;
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # I

    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget-object v1, p0, Lcom/android/server/firewall/CategoryFilter;->mCategoryName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7
.end method
