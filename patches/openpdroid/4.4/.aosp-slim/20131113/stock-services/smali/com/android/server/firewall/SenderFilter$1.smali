.class final Lcom/android/server/firewall/SenderFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
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
    .registers 7
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v1, "type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "type attribute must be specified for <sender>"

    invoke-direct {v1, v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    # getter for: Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$000()Lcom/android/server/firewall/Filter;

    move-result-object v1

    :goto_1d
    return-object v1

    :cond_1e
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    # getter for: Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$100()Lcom/android/server/firewall/Filter;

    move-result-object v1

    goto :goto_1d

    :cond_2b
    const-string v1, "system|signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    # getter for: Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$200()Lcom/android/server/firewall/Filter;

    move-result-object v1

    goto :goto_1d

    :cond_38
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    # getter for: Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->access$300()Lcom/android/server/firewall/Filter;

    move-result-object v1

    goto :goto_1d

    :cond_45
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type attribute for <sender>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method
