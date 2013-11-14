.class public Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field mActivePasswordLength:I

.field mActivePasswordLetters:I

.field mActivePasswordLowerCase:I

.field mActivePasswordNonLetter:I

.field mActivePasswordNumeric:I

.field mActivePasswordQuality:I

.field mActivePasswordSymbols:I

.field mActivePasswordUpperCase:I

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mFailedPasswordAttempts:I

.field mLastMaximumTimeToLock:J

.field mPasswordOwner:I

.field mUserHandle:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1    # I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    return-void
.end method
