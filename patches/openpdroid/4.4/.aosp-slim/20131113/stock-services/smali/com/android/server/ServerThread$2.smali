.class Lcom/android/server/ServerThread$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->initAndLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$printManagerF:Lcom/android/server/print/PrintManagerService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$twilightF:Lcom/android/server/TwilightService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/print/PrintManagerService;)V
    .registers 31

    iput-object p1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    iput-boolean p2, p0, Lcom/android/server/ServerThread$2;->val$headless:Z

    iput-object p3, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p5, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p6, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p8, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p9, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p10, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p11, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p12, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    iput-object p13, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p14, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v1, "SystemServer"

    const-string v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_fb

    :goto_e
    iget-boolean v1, p0, Lcom/android/server/ServerThread$2;->val$headless:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v1}, Lcom/android/server/MountService;->systemReady()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_105

    :cond_20
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_10f

    :cond_29
    :goto_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_119

    :cond_32
    :goto_32
    :try_start_32
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3b} :catch_123

    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_44} :catch_12d

    :cond_44
    :goto_44
    :try_start_44
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4d} :catch_137

    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v1}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_56} :catch_141

    :cond_56
    :goto_56
    :try_start_56
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_14b

    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$twilightF:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_155

    :cond_68
    :goto_68
    :try_start_68
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_71} :catch_15f

    :cond_71
    :goto_71
    :try_start_71
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v1}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7a} :catch_169

    :cond_7a
    :goto_7a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    :try_start_81
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v2, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetService;->systemRunning(Z)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_8c} :catch_173

    :cond_8c
    :goto_8c
    :try_start_8c
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->systemRunning()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_95} :catch_17d

    :cond_95
    :goto_95
    :try_start_95
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/StatusBarManagerService;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_a0} :catch_187

    :cond_a0
    :goto_a0
    :try_start_a0
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a9} :catch_191

    :cond_a9
    :goto_a9
    :try_start_a9
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b2} :catch_19b

    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_bb} :catch_1a5

    :cond_bb
    :goto_bb
    :try_start_bb
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c4} :catch_1af

    :cond_c4
    :goto_c4
    :try_start_c4
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_cd} :catch_1b9

    :cond_cd
    :goto_cd
    :try_start_cd
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dreamyF:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v1}, Lcom/android/server/dreams/DreamManagerService;->systemRunning()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d6} :catch_1c3

    :cond_d6
    :goto_d6
    :try_start_d6
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_df} :catch_1cd

    :cond_df
    :goto_df
    :try_start_df
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e8} :catch_1d7

    :cond_e8
    :goto_e8
    :try_start_e8
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_f1} :catch_1e1

    :cond_f1
    :goto_f1
    :try_start_f1
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$printManagerF:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v1}, Lcom/android/server/print/PrintManagerService;->systemRuning()V
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_fa} :catch_1eb

    :cond_fa
    :goto_fa
    return-void

    :catch_fb
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "observing native crashes"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :catch_105
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Mount Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_10f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Battery Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    :catch_119
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Managment Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    :catch_123
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Stats Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    :catch_12d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Policy Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    :catch_137
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Connectivity Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    :catch_141
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Dock Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    :catch_14b
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making USB Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    :catch_155
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "makin Twilight Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    :catch_15f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making UI Mode Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    :catch_169
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Recognition Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a

    :catch_173
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying AppWidgetService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8c

    :catch_17d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying WallpaperService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_95

    :catch_187
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying InputMethodService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a0

    :catch_191
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying Location Service running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a9

    :catch_19b
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying CountryDetectorService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b2

    :catch_1a5
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying NetworkTimeService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bb

    :catch_1af
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying CommonTimeManagementService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c4

    :catch_1b9
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying TextServicesManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cd

    :catch_1c3
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying DreamManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d6

    :catch_1cd
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying AssetAtlasService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_df

    :catch_1d7
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying InputManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e8

    :catch_1e1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying TelephonyRegistry running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f1

    :catch_1eb
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "Notifying PrintManagerService running"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_fa
.end method
