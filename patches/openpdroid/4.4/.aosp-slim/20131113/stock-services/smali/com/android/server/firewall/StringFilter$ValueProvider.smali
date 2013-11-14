.class abstract Lcom/android/server/firewall/StringFilter$ValueProvider;
.super Lcom/android/server/firewall/FilterFactory;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ValueProvider"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 3
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/firewall/StringFilter;->readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;

    move-result-object v0

    return-object v0
.end method
