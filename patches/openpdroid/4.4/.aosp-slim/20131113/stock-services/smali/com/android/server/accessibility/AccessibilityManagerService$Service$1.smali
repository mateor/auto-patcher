.class Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .registers 3
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    return-void
.end method
