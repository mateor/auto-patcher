.class final Lcom/android/server/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mChannel:Landroid/view/InputChannel;

.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V
    .registers 4
    .param p1    # Lcom/android/server/InputMethodManagerService;
    .param p2    # Lcom/android/internal/view/IInputMethod;
    .param p3    # Landroid/view/InputChannel;

    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 5
    .param p1    # Lcom/android/internal/view/IInputMethodSession;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    return-void
.end method
