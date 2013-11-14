.class public interface abstract Lcom/android/server/PreferredComponent$Callbacks;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PreferredComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
