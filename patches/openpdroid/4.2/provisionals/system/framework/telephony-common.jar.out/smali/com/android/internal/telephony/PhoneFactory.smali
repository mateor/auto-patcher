.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final preferredCdmaSubscription:I = 0x1

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .registers 5

    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    new-instance v0, Landroid/privacy/surrogate/PrivacyCDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Landroid/privacy/surrogate/PrivacyCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    :goto_15
    monitor-exit v2

    return-object v0

    :pswitch_17
    new-instance v0, Landroid/privacy/surrogate/PrivacyCDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Landroid/privacy/surrogate/PrivacyCDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    goto :goto_15

    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .registers 5

    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v0, Landroid/privacy/surrogate/PrivacyGSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Landroid/privacy/surrogate/PrivacyGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    monitor-exit v2

    return-object v0

    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .registers 21

    const-class v16, Lcom/android/internal/telephony/Phone;

    monitor-enter v16

    :try_start_3
    sget-boolean v15, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v15, :cond_14d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v15, :cond_20

    new-instance v15, Ljava/lang/RuntimeException;

    const-string v17, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :catchall_1d
    move-exception v15

    monitor-exit v16
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v15

    :cond_20
    const/4 v13, 0x0

    :goto_21
    const/4 v9, 0x0

    add-int/lit8 v13, v13, 0x1

    :try_start_24
    new-instance v15, Landroid/net/LocalServerSocket;

    const-string v17, "com.android.internal.telephony"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_1d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_14f

    :goto_2d
    if-nez v9, :cond_153

    :try_start_2f
    new-instance v15, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v15}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v12, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_42

    const/4 v12, 0x7

    :cond_42
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnGsmModeStatic()I

    move-result v15

    if-eqz v15, :cond_4a

    const/16 v12, 0x9

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "preferred_network_mode"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const-string v15, "PHONE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Network Mode set to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "subscription_mode"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v15, "PHONE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cdma Subscription set to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "ro.telephony.ril_class"

    const-string v17, "RIL"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "PHONE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RILClassname is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_2f .. :try_end_c6} :catchall_1d

    :try_start_c6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "com.android.internal.telephony."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v15, v17

    const/16 v17, 0x1

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    const/16 v17, 0x2

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v15, v17

    invoke-virtual {v5, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p0, v15, v17

    const/16 v17, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v17

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/RIL;

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_117
    .catchall {:try_start_c6 .. :try_end_117} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_117} :catch_16a

    :try_start_117
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v10}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_17a

    const-string v15, "PHONE"

    const-string v17, "Creating GSMPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/privacy/surrogate/PrivacyPhoneProxy;

    new-instance v17, Landroid/privacy/surrogate/PrivacyGSMPhone;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/privacy/surrogate/PrivacyGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Landroid/privacy/surrogate/PrivacyPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    :cond_14a
    :goto_14a
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    :cond_14d
    monitor-exit v16

    return-void

    :catch_14f
    move-exception v8

    const/4 v9, 0x1

    goto/16 :goto_2d

    :cond_153
    const/4 v15, 0x3

    if-le v13, v15, :cond_160

    new-instance v15, Ljava/lang/RuntimeException;

    const-string v17, "PhoneFactory probably already running"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_160
    .catchall {:try_start_117 .. :try_end_160} :catchall_1d

    :cond_160
    const-wide/16 v17, 0x7d0

    :try_start_162
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_162 .. :try_end_165} :catch_167

    goto/16 :goto_21

    :catch_167
    move-exception v15

    goto/16 :goto_21

    :catch_16a
    move-exception v7

    :try_start_16b
    const-string v15, "PHONE"

    const-string v17, "Unable to construct command interface"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    :cond_17a
    const/4 v15, 0x2

    if-ne v11, v15, :cond_14a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v15

    packed-switch v15, :pswitch_data_1d2

    const-string v15, "PHONE"

    const-string v17, "Creating CDMAPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/privacy/surrogate/PrivacyPhoneProxy;

    new-instance v17, Landroid/privacy/surrogate/PrivacyCDMAPhone;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/privacy/surrogate/PrivacyCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Landroid/privacy/surrogate/PrivacyPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_14a

    :pswitch_1aa
    const-string v15, "PHONE"

    const-string v17, "Creating CDMALTEPhone"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/privacy/surrogate/PrivacyPhoneProxy;

    new-instance v17, Landroid/privacy/surrogate/PrivacyCDMALTEPhone;

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/privacy/surrogate/PrivacyCDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v1}, Landroid/privacy/surrogate/PrivacyPhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    sput-object v15, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;
    :try_end_1cf
    .catchall {:try_start_16b .. :try_end_1cf} :catchall_1d

    goto/16 :goto_14a

    nop

    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_1aa
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .registers 3

    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
