.class Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamplingProfilerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplingProfilerSettingsObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/SamplingProfilerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SamplingProfilerService;Landroid/content/ContentResolver;)V
    .registers 4
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->this$0:Lcom/android/server/SamplingProfilerService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sampling_profiler_ms"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "persist.sys.profiler_ms"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
