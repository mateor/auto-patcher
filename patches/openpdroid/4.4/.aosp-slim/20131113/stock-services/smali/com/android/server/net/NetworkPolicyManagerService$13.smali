.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 20
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_20c

    const/16 v16, 0x0

    :goto_b
    return v16

    :pswitch_c
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    if-eqz v5, :cond_3c

    :try_start_39
    invoke-interface {v5, v14, v15}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_1ff

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v16, 0x1

    goto :goto_b

    :pswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v8, v16

    check-cast v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    const/4 v2, 0x0

    :goto_6a
    if-ge v2, v4, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    if-eqz v5, :cond_83

    :try_start_80
    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_202

    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v16, 0x1

    goto/16 :goto_b

    :pswitch_97
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    :try_start_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    if-nez v12, :cond_e2

    new-instance v12, Landroid/util/SparseBooleanArray;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e2
    invoke-virtual {v12, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    monitor-exit v17

    const/16 v16, 0x1

    goto/16 :goto_b

    :catchall_f5
    move-exception v16

    monitor-exit v17
    :try_end_f7
    .catchall {:try_start_b6 .. :try_end_f7} :catchall_f5

    throw v16

    :pswitch_f8
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    :try_start_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_12d

    invoke-virtual {v12, v11}, Landroid/util/SparseBooleanArray;->delete(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    :cond_12d
    monitor-exit v17

    const/16 v16, 0x1

    goto/16 :goto_b

    :catchall_132
    move-exception v16

    monitor-exit v17
    :try_end_134
    .catchall {:try_start_10b .. :try_end_134} :catchall_132

    throw v16

    :pswitch_135
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    :try_start_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_15e
    .catchall {:try_start_14f .. :try_end_15e} :catchall_185

    move-result v16

    if-eqz v16, :cond_180

    :try_start_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_16e} :catch_209
    .catchall {:try_start_161 .. :try_end_16e} :catchall_185

    :goto_16e
    :try_start_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    :cond_180
    monitor-exit v17

    const/16 v16, 0x1

    goto/16 :goto_b

    :catchall_185
    move-exception v16

    monitor-exit v17
    :try_end_187
    .catchall {:try_start_16e .. :try_end_187} :catchall_185

    throw v16

    :pswitch_188
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    if-eqz v16, :cond_1bc

    const/4 v13, 0x1

    :goto_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    const/4 v2, 0x0

    :goto_1a0
    if-ge v2, v4, :cond_1be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    if-eqz v5, :cond_1b9

    :try_start_1b6
    invoke-interface {v5, v13}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_1b9
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1b9} :catch_205

    :cond_1b9
    :goto_1b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a0

    :cond_1bc
    const/4 v13, 0x0

    goto :goto_191

    :cond_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v16, 0x1

    goto/16 :goto_b

    :pswitch_1cf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    :try_start_1dd
    div-long v9, v6, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v10}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_1ee
    .catch Landroid/os/RemoteException; {:try_start_1dd .. :try_end_1ee} :catch_207

    :goto_1ee
    const/16 v16, 0x1

    goto/16 :goto_b

    :pswitch_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const/16 v16, 0x1

    goto/16 :goto_b

    :catch_1ff
    move-exception v16

    goto/16 :goto_3c

    :catch_202
    move-exception v16

    goto/16 :goto_83

    :catch_205
    move-exception v16

    goto :goto_1b9

    :catch_207
    move-exception v16

    goto :goto_1ee

    :catch_209
    move-exception v16

    goto/16 :goto_16e

    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_4f
        :pswitch_97
        :pswitch_f8
        :pswitch_135
        :pswitch_188
        :pswitch_1cf
        :pswitch_1f2
    .end packed-switch
.end method
