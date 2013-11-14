.class Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mBound:Z

.field public mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .registers 14
    .param p2    # Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .param p3    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p6    # I
    .param p7    # Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .registers 2
    .param p0    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method private cleanLocked()V
    .registers 5

    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    # getter for: Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->access$1200(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1300(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-ne v0, p0, :cond_2c

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1300(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$400(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_37
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .registers 18
    .param p1    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p4    # I
    .param p5    # Landroid/os/Bundle;

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    :try_start_8
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v10, :cond_27

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    invoke-virtual {v1, p3}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_4f
    .catchall {:try_start_8 .. :try_end_1c} :catchall_49

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :try_start_20
    monitor-exit v11
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_49

    move-object v1, v0

    move-object v0, v9

    :goto_23
    return-object v1

    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_27
    :try_start_27
    new-instance v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_4f
    .catchall {:try_start_27 .. :try_end_36} :catchall_49

    :try_start_36
    invoke-interface {p3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_43} :catch_52
    .catchall {:try_start_36 .. :try_end_43} :catchall_4d

    :goto_43
    :try_start_43
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    monitor-exit v11

    move-object v1, v0

    goto :goto_23

    :catchall_49
    move-exception v1

    move-object v0, v9

    :goto_4b
    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    throw v1

    :catchall_4d
    move-exception v1

    goto :goto_4b

    :catch_4f
    move-exception v1

    move-object v0, v9

    goto :goto_43

    :catch_52
    move-exception v1

    goto :goto_43
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 9
    .param p1    # Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    :try_start_12
    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v6, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1, v4, v5, v6}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_35

    :try_start_23
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v4, v3}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    :cond_30
    monitor-exit v5

    goto :goto_6

    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_32

    :try_start_34
    throw v4
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v5, "Exception in getting the spell checker session.Reconnect to the spellchecker. "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    :goto_40
    return-void

    :cond_41
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_48
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    monitor-exit v5

    goto :goto_40

    :catchall_4f
    move-exception v4

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_4f

    throw v4
.end method

.method public removeAll()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v4, "Remove the spell checker bind unexpectedly."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_2c

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v3, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2c
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    monitor-exit v4

    return-void

    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_36

    throw v3
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 11
    .param p1    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v4, :cond_29

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v3, :cond_48

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v6, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v6}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_48
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    monitor-exit v7

    return-void

    :catchall_4d
    move-exception v6

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw v6
.end method
