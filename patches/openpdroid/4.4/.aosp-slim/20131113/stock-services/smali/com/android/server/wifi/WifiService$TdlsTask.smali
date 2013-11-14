.class Lcom/android/server/wifi/WifiService$TdlsTask;
.super Landroid/os/AsyncTask;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/wifi/WifiService$TdlsTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$TdlsTask;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/wifi/WifiService$TdlsTaskParams;)Ljava/lang/Integer;
    .registers 16
    .param p1    # [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    const/4 v11, 0x0

    aget-object v6, p1, v11

    iget-object v11, v6, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-boolean v1, v6, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->enable:Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_d
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    const-string v12, "/proc/net/arp"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_a2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_83
    .catchall {:try_start_d .. :try_end_19} :catchall_91

    :try_start_19
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :cond_1d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    const-string v11, "[ ]+"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x6

    if-lt v11, v12, :cond_1d

    const/4 v11, 0x0

    aget-object v2, v10, v11

    const/4 v11, 0x3

    aget-object v4, v10, v11

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    move-object v5, v4

    :cond_3a
    if-nez v5, :cond_6c

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not find remoteAddress {"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "} in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/proc/net/arp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_60} :catch_72
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_60} :catch_9f
    .catchall {:try_start_19 .. :try_end_60} :catchall_9c

    :goto_60
    if-eqz v8, :cond_65

    :try_start_62
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_9a

    :cond_65
    :goto_65
    move-object v7, v8

    :cond_66
    :goto_66
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11

    :cond_6c
    :try_start_6c
    iget-object v11, p0, Lcom/android/server/wifi/WifiService$TdlsTask;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v11, v5, v1}, Lcom/android/server/wifi/WifiService;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_71} :catch_9f
    .catchall {:try_start_6c .. :try_end_71} :catchall_9c

    goto :goto_60

    :catch_72
    move-exception v0

    move-object v7, v8

    :goto_74
    :try_start_74
    const-string v11, "WifiService"

    const-string v12, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_91

    if-eqz v7, :cond_66

    :try_start_7d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_66

    :catch_81
    move-exception v11

    goto :goto_66

    :catch_83
    move-exception v0

    :goto_84
    :try_start_84
    const-string v11, "WifiService"

    const-string v12, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_91

    if-eqz v7, :cond_66

    :try_start_8d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_81

    goto :goto_66

    :catchall_91
    move-exception v11

    :goto_92
    if-eqz v7, :cond_97

    :try_start_94
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    :cond_97
    :goto_97
    throw v11

    :catch_98
    move-exception v12

    goto :goto_97

    :catch_9a
    move-exception v11

    goto :goto_65

    :catchall_9c
    move-exception v11

    move-object v7, v8

    goto :goto_92

    :catch_9f
    move-exception v0

    move-object v7, v8

    goto :goto_84

    :catch_a2
    move-exception v0

    goto :goto_74
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiService$TdlsTask;->doInBackground([Lcom/android/server/wifi/WifiService$TdlsTaskParams;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
