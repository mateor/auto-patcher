.class final enum Lcom/android/server/BackupManagerService$RestorePolicy;
.super Ljava/lang/Enum;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RestorePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/BackupManagerService$RestorePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/BackupManagerService$RestorePolicy;

.field public static final enum ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

.field public static final enum ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

.field public static final enum IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/BackupManagerService$RestorePolicy;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RestorePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    new-instance v0, Lcom/android/server/BackupManagerService$RestorePolicy;

    const-string v1, "ACCEPT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/BackupManagerService$RestorePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    new-instance v0, Lcom/android/server/BackupManagerService$RestorePolicy;

    const-string v1, "ACCEPT_IF_APK"

    invoke-direct {v0, v1, v4}, Lcom/android/server/BackupManagerService$RestorePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/BackupManagerService$RestorePolicy;

    sget-object v1, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/BackupManagerService$RestorePolicy;->$VALUES:[Lcom/android/server/BackupManagerService$RestorePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/BackupManagerService$RestorePolicy;
    .registers 2
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/BackupManagerService$RestorePolicy;

    return-object v0
.end method

.method public static values()[Lcom/android/server/BackupManagerService$RestorePolicy;
    .registers 1

    sget-object v0, Lcom/android/server/BackupManagerService$RestorePolicy;->$VALUES:[Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v0}, [Lcom/android/server/BackupManagerService$RestorePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/BackupManagerService$RestorePolicy;

    return-object v0
.end method
