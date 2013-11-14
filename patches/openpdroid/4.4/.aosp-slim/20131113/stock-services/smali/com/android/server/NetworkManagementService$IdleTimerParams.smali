.class Lcom/android/server/NetworkManagementService$IdleTimerParams;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleTimerParams"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public networkCount:I

.field public final timeout:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->label:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    return-void
.end method
