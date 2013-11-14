.class Lcom/android/server/input/InputManagerService$6;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Landroid/hardware/input/KeyboardLayout;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$6;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$6;->val$result:[Landroid/hardware/input/KeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$6;->val$result:[Landroid/hardware/input/KeyboardLayout;

    const/4 v1, 0x0

    new-instance v2, Landroid/hardware/input/KeyboardLayout;

    invoke-direct {v2, p2, p3, p4}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-void
.end method
