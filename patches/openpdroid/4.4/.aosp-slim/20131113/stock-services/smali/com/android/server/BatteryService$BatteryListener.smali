.class final Lcom/android/server/BatteryService$BatteryListener;
.super Landroid/os/IBatteryPropertiesListener$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/BatteryService;
    .param p2    # Lcom/android/server/BatteryService$1;

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .registers 3
    .param p1    # Landroid/os/BatteryProperties;

    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V

    return-void
.end method
