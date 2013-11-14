.class Lcom/android/server/firewall/StringFilter$ContainsFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainsFilter"
.end annotation


# instance fields
.field private final mFilterValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    iput-object p2, p0, Lcom/android/server/firewall/StringFilter$ContainsFilter;->mFilterValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$ContainsFilter;->mFilterValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
