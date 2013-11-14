.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .registers 8
    .param p0    # [Lcom/android/server/NativeDaemonEvent;
    .param p1    # I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_1b

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v5

    if-ne v5, p1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static isClassUnsolicited(I)Z
    .registers 2
    .param p0    # I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .registers 9
    .param p0    # Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_12

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Insufficient arguments"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_14
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_20} :catch_36

    move-result v6

    add-int/lit8 v5, v6, 0x1

    const/4 v0, -0x1

    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v6

    if-nez v6, :cond_50

    array-length v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3f

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Insufficient arguemnts"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_36
    move-exception v2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "problem parsing code"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_3f
    const/4 v6, 0x1

    :try_start_40
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4c} :catch_5a

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_50
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/server/NativeDaemonEvent;

    invoke-direct {v6, v0, v1, v3, p0}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v6

    :catch_5a
    move-exception v2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "problem parsing cmdNumber"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p0    # Ljava/lang/String;

    const/16 v14, 0x22

    const/16 v13, 0x20

    const/4 v12, -0x1

    const/4 v0, 0x0

    const-string v1, "unescapeArgs"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_1d

    const/4 v7, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_1d
    :goto_1d
    if-ge v2, v3, :cond_7a

    if-eqz v7, :cond_6c

    move v9, v2

    :goto_22
    invoke-virtual {p0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-eq v9, v12, :cond_32

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_69

    :cond_32
    :goto_32
    if-ne v9, v12, :cond_35

    move v9, v3

    :cond_35
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v2, v10

    if-nez v7, :cond_71

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :goto_44
    const-string v10, "\\\\"

    const-string v11, "\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "\\\""

    const-string v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const-string v10, " \""

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v12, :cond_74

    if-gt v4, v5, :cond_74

    const/4 v7, 0x1

    add-int/lit8 v2, v4, 0x2

    goto :goto_1d

    :cond_69
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_6c
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_32

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_74
    const/4 v7, 0x0

    if-le v5, v12, :cond_1d

    add-int/lit8 v2, v5, 0x1

    goto :goto_1d

    :cond_7a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5
    .param p1    # I

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    if-eq v0, p1, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method

.method public getCmdNumber()I
    .registers 2

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    :cond_c
    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_14
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .registers 3

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassContinue()Z
    .registers 3

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassOk()Z
    .registers 3

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassServerError()Z
    .registers 3

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassUnsolicited()Z
    .registers 2

    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method
