.class Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mLocale:Ljava/lang/String;

.field private final mSciId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mLocale:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    return-object v0
.end method

.method private onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1300(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$900(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v2

    if-ne p0, v2, :cond_1d

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$1300(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-eqz v0, :cond_28

    # getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$900(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v1

    if-ne p0, v1, :cond_28

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$1300(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    monitor-exit v2

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method
