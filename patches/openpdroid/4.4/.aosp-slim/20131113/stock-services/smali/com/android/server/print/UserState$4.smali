.class Lcom/android/server/print/UserState$4;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;

.field final synthetic val$serviceName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/print/UserState$4;->this$0:Lcom/android/server/print/UserState;

    iput-object p2, p0, Lcom/android/server/print/UserState$4;->val$serviceName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/UserState$4;->this$0:Lcom/android/server/print/UserState;

    iget-object v1, p0, Lcom/android/server/print/UserState$4;->val$serviceName:Landroid/content/ComponentName;

    # invokes: Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    invoke-static {v0, v1}, Lcom/android/server/print/UserState;->access$400(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    return-void
.end method
