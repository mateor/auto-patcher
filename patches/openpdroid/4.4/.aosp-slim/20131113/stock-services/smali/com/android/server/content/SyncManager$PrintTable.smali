.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # [Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v0, 0x0

    array-length v1, p3

    :goto_3
    if-ge v0, v1, :cond_23

    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_23
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .registers 10
    .param p1    # I
    .param p2    # I
    .param p3    # [Ljava/lang/Object;

    array-length v3, p3

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-le v3, v4, :cond_36

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Table only has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columns. can\'t set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_36
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3c
    if-gt v0, p1, :cond_56

    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_48
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v1, v3, :cond_53

    const-string v3, ""

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_56
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    array-length v5, p3

    invoke-static {p3, v3, v4, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .registers 15
    .param p1    # Ljava/io/PrintWriter;

    const/4 v12, 0x0

    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v1, v9, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v0, 0x0

    :goto_7
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v0, v9, :cond_41

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    aget-object v9, v7, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_12

    move v6, v4

    goto :goto_12

    :cond_2c
    add-int/2addr v8, v6

    const-string v9, "%%-%ds"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_41
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v9}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/4 v2, 0x0

    :goto_54
    if-ge v2, v8, :cond_5e

    const-string v9, "-"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_5e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x1

    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_68
    if-ge v2, v5, :cond_78

    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v7}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_78
    return-void
.end method
