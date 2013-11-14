.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 21
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v13, 0x1

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v13}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    if-nez v2, :cond_35

    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unique id with no client mapping: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v5, v4

    :goto_34
    return v5

    :cond_35
    const/4 v1, -0x1

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_53

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    packed-switch p1, :pswitch_data_2c0

    const/4 v4, 0x0

    :cond_51
    :goto_51
    :pswitch_51
    move v5, v4

    goto :goto_34

    :cond_53
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Notification for a listener that is no longer active: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v5, v4

    goto :goto_34

    :pswitch_6e
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_FOUND Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60004

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_51

    :pswitch_a0
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_LOST Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60005

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_51

    :pswitch_d2
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_DISC_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60003

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_51

    :pswitch_f9
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_REGISTERED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/nsd/DnsSdTxtRecord;)V

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x6000b

    invoke-virtual {v13, v14, v6, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_51

    :pswitch_129
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_REGISTER_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x6000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_51

    :pswitch_150
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v13, -0x1

    if-ne v7, v13, :cond_192

    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid service found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :cond_192
    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, ".local."

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v14, 0x3

    aget-object v14, p3, v14

    # invokes: Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z
    invoke-static {v13, v6, v14}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_51

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_51

    :pswitch_1f3
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;I)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_51

    :pswitch_22c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$2800(Lcom/android/server/NsdService;I)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_51

    :pswitch_265
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_GET_ADDR_SUCCESS Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_27f
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60014

    const/4 v15, 0x0

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_29e
    .catch Ljava/net/UnknownHostException; {:try_start_27f .. :try_end_29e} :catch_2b2

    :goto_29e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z
    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$2800(Lcom/android/server/NsdService;I)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    const/4 v13, 0x0

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_51

    :catch_2b2
    move-exception v3

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_29e

    nop

    :pswitch_data_2c0
    .packed-switch 0x25a
        :pswitch_d2
        :pswitch_6e
        :pswitch_a0
        :pswitch_129
        :pswitch_f9
        :pswitch_1f3
        :pswitch_150
        :pswitch_51
        :pswitch_51
        :pswitch_22c
        :pswitch_265
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .registers 5
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/server/NsdService$ClientInfo;

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .registers 5
    .param p1    # Lcom/android/server/NsdService$ClientInfo;

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_26

    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .registers 6
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/android/server/NsdService$ClientInfo;

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;Z)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->startMDnsDaemon()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1000(Lcom/android/server/NsdService;)Z

    :cond_1d
    return-void
.end method

.method public exit()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopMDnsDaemon()Z
    invoke-static {v0}, Lcom/android/server/NsdService;->access$1100(Lcom/android/server/NsdService;)Z

    :cond_15
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1    # Landroid/os/Message;

    const v12, 0x6000a

    const v11, 0x60007

    const v10, 0x60003

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x1

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_278

    const/4 v4, 0x0

    :cond_12
    :goto_12
    return v4

    :sswitch_13
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_2c

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_2c

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->startMDnsDaemon()Z
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1000(Lcom/android/server/NsdService;)Z

    :cond_2c
    const/4 v4, 0x0

    goto :goto_12

    :sswitch_2e
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_44

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopMDnsDaemon()Z
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1100(Lcom/android/server/NsdService;)Z

    :cond_44
    const/4 v4, 0x0

    goto :goto_12

    :sswitch_46
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    # getter for: Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    invoke-static {v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1400(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v7

    # invokes: Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1500(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_12

    :sswitch_52
    const-string v6, "NsdService"

    const-string v7, "Discover services"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_7b

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_12

    :cond_7b
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z
    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->access$1700(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discover "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60002

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_12

    :cond_ce
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;I)Z

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :sswitch_de
    const-string v6, "NsdService"

    const-string v7, "Stop service discovery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    :try_start_f5
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_104
    .catch Ljava/lang/NullPointerException; {:try_start_f5 .. :try_end_104} :catch_120

    move-result v3

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_12a

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60008

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_12

    :catch_120
    move-exception v1

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :cond_12a
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :sswitch_133
    const-string v6, "NsdService"

    const-string v7, "Register service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_159

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :cond_159
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    # invokes: Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_19a

    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Register "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    goto/16 :goto_12

    :cond_19a
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;I)Z

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :sswitch_1aa
    const-string v6, "NsdService"

    const-string v7, "unregister service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    :try_start_1c1
    # getter for: Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1d0
    .catch Ljava/lang/NullPointerException; {:try_start_1c1 .. :try_end_1d0} :catch_1ec

    move-result v3

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_1f9

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000e

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_12

    :catch_1ec
    move-exception v1

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :cond_1f9
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :sswitch_205
    const-string v6, "NsdService"

    const-string v7, "Resolve service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    # getter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$2300(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_233

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    const/4 v8, 0x3

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :cond_233
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->getUniqueId()I
    invoke-static {v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->access$2400(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_254

    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    # setter for: Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->access$2302(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    goto/16 :goto_12

    :cond_254
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    # invokes: Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_12

    :sswitch_260
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    iget v6, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v7, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v4, 0x0

    goto/16 :goto_12

    nop

    :sswitch_data_278
    .sparse-switch
        0x11000 -> :sswitch_13
        0x11004 -> :sswitch_2e
        0x60001 -> :sswitch_52
        0x60006 -> :sswitch_de
        0x60009 -> :sswitch_133
        0x6000c -> :sswitch_1aa
        0x60012 -> :sswitch_205
        0x60019 -> :sswitch_46
        0x6001a -> :sswitch_260
    .end sparse-switch
.end method
