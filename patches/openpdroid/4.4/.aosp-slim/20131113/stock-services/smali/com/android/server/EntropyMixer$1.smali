.class Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyMixer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const-string v0, "EntropyMixer"

    const-string v1, "Will not process invalid message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    # invokes: Lcom/android/server/EntropyMixer;->writeEntropy()V
    invoke-static {v0}, Lcom/android/server/EntropyMixer;->access$000(Lcom/android/server/EntropyMixer;)V

    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    # invokes: Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V
    invoke-static {v0}, Lcom/android/server/EntropyMixer;->access$100(Lcom/android/server/EntropyMixer;)V

    goto :goto_c
.end method
