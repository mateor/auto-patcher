.class final Lcom/android/server/am/ActiveServices$DelayingProcess;
.super Ljava/util/ArrayList;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayingProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/ServiceRecord;",
        ">;"
    }
.end annotation


# instance fields
.field timeoout:J


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method
