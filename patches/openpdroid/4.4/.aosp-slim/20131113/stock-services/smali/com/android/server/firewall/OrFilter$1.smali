.class final Lcom/android/server/firewall/OrFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "OrFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/OrFilter;
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
    .registers 3
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/firewall/OrFilter;

    invoke-direct {v0}, Lcom/android/server/firewall/OrFilter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/server/firewall/OrFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    move-result-object v0

    return-object v0
.end method
