.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/AppOpsService$Ops;->uid:I

    return-void
.end method
