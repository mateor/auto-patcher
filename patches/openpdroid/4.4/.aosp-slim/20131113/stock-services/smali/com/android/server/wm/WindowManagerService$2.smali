.class final Lcom/android/server/wm/WindowManagerService$2;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dm:Lcom/android/server/display/DisplayManagerService;

.field final synthetic val$haveInputMethods:Z

.field final synthetic val$holder:[Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$im:Lcom/android/server/input/InputManagerService;

.field final synthetic val$onlyCore:Z

.field final synthetic val$pm:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$showBootMsgs:Z


# direct methods
.method constructor <init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$2;->val$pm:Lcom/android/server/power/PowerManagerService;

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$2;->val$dm:Lcom/android/server/display/DisplayManagerService;

    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$2;->val$im:Lcom/android/server/input/InputManagerService;

    iput-boolean p6, p0, Lcom/android/server/wm/WindowManagerService$2;->val$haveInputMethods:Z

    iput-boolean p7, p0, Lcom/android/server/wm/WindowManagerService$2;->val$showBootMsgs:Z

    iput-boolean p8, p0, Lcom/android/server/wm/WindowManagerService$2;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$2;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->val$pm:Lcom/android/server/power/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$2;->val$dm:Lcom/android/server/display/DisplayManagerService;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$2;->val$im:Lcom/android/server/input/InputManagerService;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService$2;->val$haveInputMethods:Z

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService$2;->val$showBootMsgs:Z

    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService$2;->val$onlyCore:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/wm/WindowManagerService$1;)V

    aput-object v0, v9, v10

    return-void
.end method
