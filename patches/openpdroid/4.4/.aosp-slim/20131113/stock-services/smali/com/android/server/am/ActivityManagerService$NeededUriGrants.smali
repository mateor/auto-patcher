.class Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeededUriGrants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetPkg:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->targetUid:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->flags:I

    return-void
.end method
