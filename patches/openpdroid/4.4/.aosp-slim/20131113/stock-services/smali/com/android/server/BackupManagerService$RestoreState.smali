.class final enum Lcom/android/server/BackupManagerService$RestoreState;
.super Ljava/lang/Enum;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RestoreState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/BackupManagerService$RestoreState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/BackupManagerService$RestoreState;

.field public static final enum DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

.field public static final enum FINAL:Lcom/android/server/BackupManagerService$RestoreState;

.field public static final enum INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

.field public static final enum PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/BackupManagerService$RestoreState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestoreState;->INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

    new-instance v0, Lcom/android/server/BackupManagerService$RestoreState;

    const-string v1, "DOWNLOAD_DATA"

    invoke-direct {v0, v1, v3}, Lcom/android/server/BackupManagerService$RestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestoreState;->DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

    new-instance v0, Lcom/android/server/BackupManagerService$RestoreState;

    const-string v1, "PM_METADATA"

    invoke-direct {v0, v1, v4}, Lcom/android/server/BackupManagerService$RestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestoreState;->PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

    new-instance v0, Lcom/android/server/BackupManagerService$RestoreState;

    const-string v1, "RUNNING_QUEUE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/BackupManagerService$RestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    new-instance v0, Lcom/android/server/BackupManagerService$RestoreState;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v6}, Lcom/android/server/BackupManagerService$RestoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/BackupManagerService$RestoreState;

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/BackupManagerService$RestoreState;->$VALUES:[Lcom/android/server/BackupManagerService$RestoreState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/BackupManagerService$RestoreState;
    .registers 2
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/server/BackupManagerService$RestoreState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/BackupManagerService$RestoreState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/BackupManagerService$RestoreState;
    .registers 1

    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->$VALUES:[Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v0}, [Lcom/android/server/BackupManagerService$RestoreState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/BackupManagerService$RestoreState;

    return-object v0
.end method
