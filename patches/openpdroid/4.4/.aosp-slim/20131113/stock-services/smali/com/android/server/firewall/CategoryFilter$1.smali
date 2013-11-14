.class final Lcom/android/server/firewall/CategoryFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "CategoryFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/CategoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 6
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "name"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Category name must be specified."

    invoke-direct {v1, v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    new-instance v1, Lcom/android/server/firewall/CategoryFilter;

    invoke-direct {v1, v0, v3}, Lcom/android/server/firewall/CategoryFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/CategoryFilter$1;)V

    return-object v1
.end method
