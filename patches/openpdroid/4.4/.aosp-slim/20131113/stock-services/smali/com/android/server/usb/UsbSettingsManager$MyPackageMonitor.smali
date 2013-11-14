.class Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$1;)V
    .registers 3
    .param p1    # Lcom/android/server/usb/UsbSettingsManager;
    .param p2    # Lcom/android/server/usb/UsbSettingsManager$1;

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbSettingsManager;

    # invokes: Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbSettingsManager;

    # invokes: Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearDefaults(Ljava/lang/String;)V

    return-void
.end method
