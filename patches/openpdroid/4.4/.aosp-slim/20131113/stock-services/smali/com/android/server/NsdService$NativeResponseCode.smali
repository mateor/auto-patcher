.class Lcom/android/server/NsdService$NativeResponseCode;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeResponseCode"
.end annotation


# static fields
.field public static final SERVICE_DISCOVERY_FAILED:I = 0x25a

.field public static final SERVICE_FOUND:I = 0x25b

.field public static final SERVICE_GET_ADDR_FAILED:I = 0x263

.field public static final SERVICE_GET_ADDR_SUCCESS:I = 0x264

.field public static final SERVICE_LOST:I = 0x25c

.field public static final SERVICE_REGISTERED:I = 0x25e

.field public static final SERVICE_REGISTRATION_FAILED:I = 0x25d

.field public static final SERVICE_RESOLUTION_FAILED:I = 0x25f

.field public static final SERVICE_RESOLVED:I = 0x260

.field public static final SERVICE_UPDATED:I = 0x261

.field public static final SERVICE_UPDATE_FAILED:I = 0x262


# instance fields
.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$NativeResponseCode;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
