.class synthetic Lcom/android/server/BackupManagerService$4;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$BackupManagerService$BackupState:[I

.field static final synthetic $SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

.field static final synthetic $SwitchMap$com$android$server$BackupManagerService$RestoreState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/server/BackupManagerService$RestoreState;->values()[Lcom/android/server/BackupManagerService$RestoreState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    :try_start_9
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_aa

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_a7

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_a5

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_a3

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_a1

    :goto_40
    invoke-static {}, Lcom/android/server/BackupManagerService$RestorePolicy;->values()[Lcom/android/server/BackupManagerService$RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    :try_start_49
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_9f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_9d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    sget-object v1, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_9b

    :goto_6a
    invoke-static {}, Lcom/android/server/BackupManagerService$BackupState;->values()[Lcom/android/server/BackupManagerService$BackupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$BackupState:[I

    :try_start_73
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$BackupState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_99

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$BackupState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_97

    :goto_89
    :try_start_89
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$BackupState:[I

    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_95

    :goto_94
    return-void

    :catch_95
    move-exception v0

    goto :goto_94

    :catch_97
    move-exception v0

    goto :goto_89

    :catch_99
    move-exception v0

    goto :goto_7e

    :catch_9b
    move-exception v0

    goto :goto_6a

    :catch_9d
    move-exception v0

    goto :goto_5f

    :catch_9f
    move-exception v0

    goto :goto_54

    :catch_a1
    move-exception v0

    goto :goto_40

    :catch_a3
    move-exception v0

    goto :goto_35

    :catch_a5
    move-exception v0

    goto :goto_2a

    :catch_a7
    move-exception v0

    goto/16 :goto_1f

    :catch_aa
    move-exception v0

    goto/16 :goto_14
.end method
