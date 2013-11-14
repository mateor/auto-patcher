.class final Lcom/android/server/am/ActivityResult;
.super Landroid/app/ResultInfo;
.source "ActivityResult.java"


# instance fields
.field final mFrom:Lcom/android/server/am/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 6
    .param p1    # Lcom/android/server/am/ActivityRecord;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/content/Intent;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    return-void
.end method
