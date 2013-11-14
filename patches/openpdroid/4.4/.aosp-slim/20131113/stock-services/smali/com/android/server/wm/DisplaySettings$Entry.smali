.class public Lcom/android/server/wm/DisplaySettings$Entry;
.super Ljava/lang/Object;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public overscanBottom:I

.field public overscanLeft:I

.field public overscanRight:I

.field public overscanTop:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplaySettings$Entry;->name:Ljava/lang/String;

    return-void
.end method
