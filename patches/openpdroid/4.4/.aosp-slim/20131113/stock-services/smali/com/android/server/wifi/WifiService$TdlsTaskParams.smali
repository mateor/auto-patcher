.class Lcom/android/server/wifi/WifiService$TdlsTaskParams;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTaskParams"
.end annotation


# instance fields
.field public enable:Z

.field public remoteIpAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
