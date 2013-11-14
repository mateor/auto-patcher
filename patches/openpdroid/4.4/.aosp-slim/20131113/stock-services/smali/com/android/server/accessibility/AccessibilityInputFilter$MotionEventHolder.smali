.class Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionEventHolder"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static final sPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public event:Landroid/view/MotionEvent;

.field public next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field public policyFlags:I

.field public previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .registers 4
    .param p0    # Landroid/view/MotionEvent;
    .param p1    # I

    sget-object v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;-><init>()V

    :cond_f
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iput p1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    sget-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method
