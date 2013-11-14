.class Lcom/android/server/accessibility/AccessibilityInputFilter$1;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$000(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$100(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$200(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$300(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    :cond_1c
    return-void
.end method
