.class abstract Lcom/android/server/firewall/FilterList;
.super Ljava/lang/Object;
.source "FilterList.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# instance fields
.field protected final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/firewall/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .registers 4
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/FilterList;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_e
    return-object p0
.end method
