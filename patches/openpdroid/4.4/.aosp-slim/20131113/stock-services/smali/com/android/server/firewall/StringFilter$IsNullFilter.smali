.class Lcom/android/server/firewall/StringFilter$IsNullFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsNullFilter"
.end annotation


# instance fields
.field private final mIsNull:Z


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V
    .registers 4
    .param p1    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2    # Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    iput-boolean p2, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_a

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    if-ne v0, v3, :cond_c

    :goto_9
    return v1

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_c
    move v1, v2

    goto :goto_9
.end method
