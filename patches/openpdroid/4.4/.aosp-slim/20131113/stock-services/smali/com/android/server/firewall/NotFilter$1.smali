.class final Lcom/android/server/firewall/NotFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "NotFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/NotFilter;
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
    .registers 8
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_6
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v1

    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_6

    :cond_14
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "<not> tag can only contain a single child filter."

    invoke-direct {v3, v4, p1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    :cond_1c
    new-instance v3, Lcom/android/server/firewall/NotFilter;

    invoke-direct {v3, v0, v5}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;Lcom/android/server/firewall/NotFilter$1;)V

    return-object v3
.end method
