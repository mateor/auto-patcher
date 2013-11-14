.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopTetheringErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    const-string v0, "Tethering"

    const-string v1, "Error in stopTethering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;->notify(I)V

    :try_start_c
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method
