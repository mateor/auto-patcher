.class Lcom/android/server/AlarmManagerService$WakeupEvent;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakeupEvent"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field public uid:I

.field public when:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V
    .registers 6
    .param p2    # J
    .param p4    # I
    .param p5    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    iput p4, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    iput-object p5, p0, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    return-void
.end method
