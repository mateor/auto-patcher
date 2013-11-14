.class Lcom/android/server/firewall/IntentFirewall$Rule;
.super Lcom/android/server/firewall/AndFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final ATTR_BLOCK:Ljava/lang/String; = "block"

.field private static final ATTR_LOG:Ljava/lang/String; = "log"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG_COMPONENT_FILTER:Ljava/lang/String; = "component-filter"

.field private static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"


# instance fields
.field private block:Z

.field private log:Z

.field private final mComponentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/firewall/AndFilter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$1;)V
    .registers 2
    .param p1    # Lcom/android/server/firewall/IntentFirewall$1;

    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    return v0
.end method

.method public getComponentFilter(I)Landroid/content/ComponentName;
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public getComponentFilterCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object v0
.end method

.method public getIntentFilterCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLog()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    return v0
.end method

.method protected readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "intent-filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v3, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-direct {v3, p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    invoke-virtual {v3, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v4, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    return-void

    :cond_1b
    const-string v4, "component-filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Component name must be specified."

    invoke-direct {v4, v5, p1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    :cond_33
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_52

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid component name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_52
    iget-object v4, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_58
    invoke-super {p0, p1}, Lcom/android/server/firewall/AndFilter;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1a
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .registers 3
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object v0

    return-object v0
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 4
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "block"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    const-string v0, "log"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    invoke-super {p0, p1}, Lcom/android/server/firewall/AndFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    return-object p0
.end method
