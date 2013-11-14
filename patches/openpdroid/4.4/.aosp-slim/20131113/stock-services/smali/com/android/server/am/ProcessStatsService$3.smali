.class Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$outData:[B


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V
    .registers 5
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$3;->this$0:Lcom/android/server/am/ProcessStatsService;

    iput-object p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/am/ProcessStatsService$3;->val$outData:[B

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$outData:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v2, "ProcessStatsService"

    const-string v3, "Failure writing pipe"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method
