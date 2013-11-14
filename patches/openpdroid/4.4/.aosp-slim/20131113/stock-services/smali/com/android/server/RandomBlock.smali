.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 4
    .param p0    # Ljava/io/Closeable;

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    const-string v1, "RandomBlock"

    const-string v2, "IOException thrown while closing Closeable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .registers 4
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    :try_start_6
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_13

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    return-object v2

    :catchall_e
    move-exception v2

    :goto_f
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw v2

    :catchall_13
    move-exception v2

    move-object v0, v1

    goto :goto_f
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .registers 6
    .param p0    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/server/RandomBlock;

    invoke-direct {v1}, Lcom/android/server/RandomBlock;-><init>()V

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_1d

    iget-object v3, v1, Lcom/android/server/RandomBlock;->block:[B

    rsub-int v4, v2, 0x1000

    invoke-virtual {p0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1b

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_1b
    add-int/2addr v2, v0

    goto :goto_6

    :cond_1d
    return-object v1
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .registers 3
    .param p1    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .registers 3
    .param p0    # Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x1000

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_14

    const-string v2, "rws"

    :goto_7
    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    :try_start_a
    invoke-direct {p0, v1}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    invoke-static {v1}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1c

    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    return-void

    :cond_14
    :try_start_14
    const-string v2, "rw"
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v2

    :goto_18
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw v2

    :catchall_1c
    move-exception v2

    move-object v0, v1

    goto :goto_18
.end method
