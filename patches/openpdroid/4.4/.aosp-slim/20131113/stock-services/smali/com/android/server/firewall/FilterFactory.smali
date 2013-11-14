.class public abstract Lcom/android/server/firewall/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_b
    iput-object p1, p0, Lcom/android/server/firewall/FilterFactory;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/firewall/FilterFactory;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method
