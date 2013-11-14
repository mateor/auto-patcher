.class public Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "ProcessMemInfo.java"


# instance fields
.field final adjReason:Ljava/lang/String;

.field final adjType:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final oomAdj:I

.field final pid:I

.field final procState:I

.field pss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/ProcessMemInfo;->pid:I

    iput p3, p0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iput p4, p0, Lcom/android/server/am/ProcessMemInfo;->procState:I

    iput-object p5, p0, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    return-void
.end method
