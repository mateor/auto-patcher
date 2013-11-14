.class Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceScoreRule"
.end annotation


# instance fields
.field public final mPrefix:Ljava/lang/String;

.field public final mScore:B


# direct methods
.method public constructor <init>(Ljava/lang/String;B)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    iput-byte p2, p0, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    return-void
.end method
