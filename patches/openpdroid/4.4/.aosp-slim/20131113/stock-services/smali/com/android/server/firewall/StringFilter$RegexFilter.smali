.class Lcom/android/server/firewall/StringFilter$RegexFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexFilter"
.end annotation


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/firewall/StringFilter$RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
